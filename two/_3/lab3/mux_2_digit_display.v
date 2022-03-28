module mux_2_digit_display (
    input [1:0] sel,				
	 input [7:0] tens,
    input [7:0] ones,
    output [7:0] cathodes			//	2-digit
	 //output reg [7:0] cathodes	//	4-digit
);
assign cathodes = sel ? tens : ones;

//	4-digit display demo
//always@(*) begin
//	case (sel)
//		2'b00: cathodes = ones;
//		2'b01: cathodes = tens;
//		2'b10: cathodes = ones;
//		2'b11: cathodes = tens;
//	endcase
//end
////
endmodule
