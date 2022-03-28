module encoder2x4(
  input             ena,
  input       [3:0] a,
  output reg  [0:1] r,
  output reg		  valid
);

always@(*) begin
  casex ({ena, a[3:0]})
    5'b00000: begin
      r = 2'b00;
      valid = 1'b1;
      end
    5'b00001: begin
      r = 2'b00;
      valid = 1'b0;
      end
    5'b0001x: begin
      r = 2'b01;
      valid = 1'b0;
      end
    5'b001xx: begin
      r = 2'b10;
      valid = 1'b0;
      end
    5'b01xxx: begin
      r = 2'b11;
      valid = 1'b0;
      end
    5'b1xxxx: begin
      r = 2'b00;
      valid = 1'b1;
      end
  endcase
end
endmodule
