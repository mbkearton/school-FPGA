module decoder2x4 (
  input             enable,
  input             p,
  input       [1:0] a,
  output reg  [0:3] y
);

always@(*) begin
  casex ({enable, p, a[1:0]})
    4'b0000: y = 4'b1000;
    4'b0001: y = 4'b0100;
    4'b0010: y = 4'b0010;
    4'b0011: y = 4'b0001;
    4'b0100: y = 4'b0111;
    4'b0101: y = 4'b1011;
    4'b0110: y = 4'b1101;
    4'b0111: y = 4'b1110;
    4'b1xxx: y = 4'bzzzz;
  endcase
end
endmodule
