module counter_5b (
    input clock,
    input enable,
    input reset,
    input up_down,
    output reg [4:0] counter
);
initial begin
    counter = 0;
end

always@(posedge clock) begin
    if (enable) begin
        if (reset) counter <= 5'd0;
        else begin
            if (up_down) begin   // updown == 1 --> counting UP
                counter <= counter + 1;
            end
            else begin          // updown == 0 --> counting DOWN
                counter <= counter - 1;
            end
        end
    end
end
endmodule
