module bcd_adder(
  input wire [4:0] a,
  input wire [4:0] b,
  output reg [7:0] x
);
  wire [5:0] sum;

assign sum = a + b;

always@(*) begin
  x [7:4] = sum / 4'b1010;
  x [3:0] = sum % 4'b1010;
end
endmodule
