module sync_counter (
    input               clock,
    input               reset,
    input               load,
    input               up_down,        //  0 == count UP;  1 == count DOWN
    input       [7:0]   D,
    output reg  [7:0]   Q
);

initial begin
    Q = 8'd0;
end

always@(negedge clock)begin
    if      (~reset)     Q <= 8'd0;      //  synchronous reset
    else if (load)      Q <= D;
    else begin                          //  load == 0
        if  (up_down == 0) begin         //  if counting UP
            Q <= (Q == 8'd255) ? 8'd0 : Q + 1'b1;
        end
        else if (up_down == 1) begin    //  if counting DOWN
            Q <= (Q == 8'd0) ? 8'd255 : Q - 1'b1;
        end
    end
end
endmodule
