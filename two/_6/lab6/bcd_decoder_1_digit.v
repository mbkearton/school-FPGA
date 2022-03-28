module bcd_decoder_1_digit (
  input wire [3:0] bin_in,
  output reg [7:0] sseg_out
);

always@(*) begin
    case (bin_in)
          4'b0000: sseg_out = 8'b11000000;
          4'b0001: sseg_out = 8'b11111001;
          4'b0010: sseg_out = 8'b10100100;
          4'b0011: sseg_out = 8'b10110000;
          4'b0100: sseg_out = 8'b10011001;
          4'b0101: sseg_out = 8'b10010010;
          4'b0110: sseg_out = 8'b10000010;
          4'b0111: sseg_out = 8'b11111000;
          4'b1000: sseg_out = 8'b10000000;
          4'b1001: sseg_out = 8'b10011000;
          4'b1010: sseg_out = 8'b10001000;  // A
          4'b1011: sseg_out = 8'b10000011;  // B
          4'b1100: sseg_out = 8'b10100111;  // C
          4'b1101: sseg_out = 8'b10100010;  // D
          4'b1110: sseg_out = 8'b10000110;  // E
          4'b1111: sseg_out = 8'b10001110;  // F
	     default:  sseg_out = 8'b10000000;
    endcase
end
endmodule
