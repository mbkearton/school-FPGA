module bcd_decoder_2_digits (
	input [3:0] in_digit_tens,
	input [3:0] in_digit_ones,
//	// extra digits for mux for 4-digit display demo
//	output [7:0] extra_tens,
//	output [7:0] extra_ones,
//	//
	output [7:0] out_digit_tens,
	output [7:0] out_digit_ones
);
wire [7:0] tens;
wire [7:0] ones;
bcd_decoder_1_digit _tens (.bin_in(in_digit_tens), .sseg_out(tens));
bcd_decoder_1_digit _ones (.bin_in(in_digit_ones), .sseg_out(ones));
assign out_digit_tens = tens;
assign out_digit_ones = ones;

//// extra digits for mux for 4-digit display demo
//assign extra_tens = tens;
//assign extra_ones = ones;
////
endmodule
