module controller_clk_pov (
	input clk,
//	// extra anodes for 4-digit demo
//	output anode2,
//	output anode3,
//	//
	output anode0,
	output anode1,
//	output reg [1:0] mux_clk	// 4-digit
	output mux_clk					// 2-digit
);

assign mux_clk = clk;
assign anode0 = clk ? 1'b1 : 1'b0;
assign anode1 = clk ? 1'b0 : 1'b1;

//// 4-digit display demo
//always@(posedge clk) begin
//	mux_clk <= mux_clk + 1'b1;
//end
//
//reg [3:0] foo;
//always@(*) begin
//	case(mux_clk)
//		2'b00: foo = 4'b0001;
//		2'b01: foo = 4'b0010;
//		2'b10: foo = 4'b0100;
//		2'b11: foo = 4'b1000;
//	endcase
//end
//
//assign {anode3,anode2,anode1,anode0} = foo;
////
endmodule
