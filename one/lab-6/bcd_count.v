module bcd_count (
        input               up_down,    // 0 == count DOWN; 1 == count UP -- [inverted from sync_counter in previous part 2!]
        input               cen,
        input               clk,
        input               reset,
        output reg  [3:0]   Q
);

initial begin
    Q = 4'd0;
end

always@(posedge clk or negedge reset)   begin
    if (~reset) Q <= 4'd0;              // asynchronous reset
    else if (~cen)  begin
        if (up_down) begin              // up_down == 1 -- count UP
            Q <= (Q == 4'd9) ? 4'd0 : Q + 1'b1;
        end
        else begin                      // up_down == 0 -- count DOWN
            Q <= (Q == 4'd0) ? 4'd9 : Q - 1'b1;
        end
    end
end
endmodule
