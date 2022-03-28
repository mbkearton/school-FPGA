module traffic_controller (
    input               clock,
    input               reset,
    input               sensor,
    output  reg [2:0]   hwy_light,
    output  reg [2:0]   frm_light
);
    // Variables to reference state encodings
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, R0 = 3'b100;
    // Interal registers for current/next state encoding and count value
    reg [2:0] state;
    reg [2:0] next;
    reg [3:0] count;
    reg       clear_count;

initial begin
    state = 3'd0;
    next = 3'd0;
    count = 4'd0;
    clear_count = 1'b0;
    hwy_light = 3'b001;
    frm_light = 3'b100;
end

//  STATE TRANSITION
always@(posedge clock) begin
    if (clear_count) count <= 4'd0;
    else             count <= count + 1'b1;
    state <= next;
end

//  NEXT STATE LOGIC
always@(*) begin
    if (~reset) begin
        next = R0;
        clear_count = 1'b1;
    end
    else begin
        case (state)
            S0: begin   // HIGHWAY GREEN; FARM ROAD RED -- IDLE
                next = sensor ? S1 : S0;
                clear_count = 1'b0;
            end
            S1: begin   // HIGHWAY YELLOW; FARM ROAD RED
                next = count < 4'd10 ? S1 : S2;
                clear_count = count < 4'd10 ? 1'b0 : 1'b1;
            end
            S2: begin   // HIGHWAY RED; FARM ROAD GREEN
                next = count < 4'd15 ? S2 : S3;
                clear_count = count < 4'd15 ? 1'b0 : 1'b1;
            end
            S3: begin   // HIGHWAY RED; FARM ROAD YELLOW
                next = count < 4'd10 ? S3 : S0;
                clear_count = count < 4'd10 ? 1'b0 : 1'b1;
            end
            R0: begin   // HIGHWAY RED; FARM ROAD RED -- RESET!
                next = count < 4'd5 ? R0 : S0;
                clear_count = count < 4'd5 ? 1'b0 : 1'b1;
            end
            default: begin // idle
                next = S0;
                clear_count = 1'b1;
            end
        endcase
    end
end

//  OUTPUT LOGIC
always@(*) begin
    case (state)
        S0: begin   // HIGHWAY GREEN; FARM ROAD RED -- IDLE
            hwy_light = 3'b001;
            frm_light = 3'b100;
        end
        S1: begin   // HIGHWAY YELLOW; FARM ROAD RED
            hwy_light = 3'b010;
            frm_light = 3'b100;
        end
        S2: begin   // HIGHWAY RED; FARM ROAD GREEN
            hwy_light = 3'b100;
            frm_light = 3'b001;
        end
        S3: begin   // HIGHWAY RED; FARM ROAD YELLOW
            hwy_light = 3'b100;
            frm_light = 3'b010;
        end
        R0: begin   // HIGHWAY RED; FARM ROAD RED -- RESET!
            hwy_light = 3'b100;
            frm_light = 3'b100;
        end
        default: begin // idle
            hwy_light = 3'b001;
            frm_light = 3'b100;
        end
    endcase
end
endmodule
