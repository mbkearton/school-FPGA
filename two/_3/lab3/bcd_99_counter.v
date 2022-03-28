module bcd_99_counter (
    input               clk,
    output reg [3:0]    count_tens,
    output reg [3:0]    count_ones
);
/*

*/
initial begin
    count_tens = 0;
    count_ones = 0;
end
always@(posedge clk) begin
	if (count_tens >= 9 && count_ones >= 9) begin
		{count_tens, count_ones} <= 0;
	end
   else if (count_ones >= 9) begin
      count_tens <= count_tens + 1;
		count_ones <= 0;
   end
   else begin
		count_ones <= count_ones + 1;
   end
end
endmodule
