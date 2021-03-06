
//=======================================================
//  This code is generated by Terasic System Builder
//=======================================================

module tictactoe(

	//////////// CLOCK //////////
	input 		          		ADC_CLK_10,
	input 		          		MAX10_CLK1_50,
	input 		          		MAX10_CLK2_50,

	//////////// SEG7 //////////
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,

	//////////// KEY //////////
	input 		     [1:0]		KEY,

	//////////// LED //////////
	output		     [9:0]		LEDR,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// VGA //////////
	output		     [3:0]		VGA_B,
	output		     [3:0]		VGA_G,
	output		          		VGA_HS,
	output		     [3:0]		VGA_R,
	output		          		VGA_VS,

	//////////// Accelerometer //////////
	output		          		GSENSOR_CS_N,
	input 		     [2:1]		GSENSOR_INT,
	output		          		GSENSOR_SCLK,
	inout 		          		GSENSOR_SDI,
	inout 		          		GSENSOR_SDO,

	//////////// Arduino //////////
	inout 		    [15:0]		ARDUINO_IO,
	inout 		          		ARDUINO_RESET_N
);

//=======================================================
//  REG/WIRE declarations
//=======================================================
wire button_clock;
wire VGA_clk;
wire [2:0] pos1;	//	why not reg?
wire [2:0] pos2;
wire [2:0] pos3;
wire [2:0] pos4;
wire [2:0] pos5;
wire [2:0] pos6;
wire [2:0] pos7;
wire [2:0] pos8;
wire [2:0] pos9;
wire [9:0] offsetx;
wire [9:0] offsety;
wire [3:0] pos_CTRL_sel;
wire [9:0] xpos;
wire [9:0] ypos;
wire redWins;
wire blueWins;
wire ren1;
wire ren2;
wire ren3;
wire ren4;
wire ren5;
wire ren6;
wire ren7;
wire ren8;
wire ren9;
wire bluen1;
wire bluen2;
wire bluen3;
wire bluen4;
wire bluen5;
wire bluen6;
wire bluen7;
wire bluen8;
wire bluen9;

button_clock 	CLK_button	(.CLOCK_50(MAX10_CLK1_50), .CLOCK_BUTTON(button_clock));
clock 			CLK_vga_1 	(.inclk0(MAX10_CLK1_50), .c0(VGA_clk));

gamelogic LOG_game (
	.position(pos_CTRL_sel),
	.vga_clk(VGA_clk),
	.place(KEY[0]),
	.reset(SW[9]),
	.pos1(pos1),
	.pos2(pos2),
	.pos3(pos3),
	.pos4(pos4),
	.pos5(pos5),
	.pos6(pos6),
	.pos7(pos7),
	.pos8(pos8),
	.pos9(pos9)
	);
select_controller CTRL_sel (
	.button_clock(button_clock),
	.reset(SW[9]),
	.sel(KEY[1]),
	.offsetx(offsetx),
	.offsety(offsety),
	.position(pos_CTRL_sel)
	);

video_controller CTRL_vid (
	.vga_clock(VGA_clk),
	.hsyncOut(VGA_HS),
	.vsyncOut(VGA_VS),
	.xposOut(xpos),
	.yposOut(ypos)
	);
winner LOG_winner (
	.pos1(pos1),
	.pos2(pos2),
	.pos3(pos3),
	.pos4(pos4),
	.pos5(pos5),
	.pos6(pos6),
	.pos7(pos7),
	.pos8(pos8),
	.pos9(pos9),
	.redWins(redWins),
	.blueWins(blueWins)
	);
decode_square DEC_square (
	.pos1(pos1),
	.pos2(pos2),
	.pos3(pos3),
	.pos4(pos4),
	.pos5(pos5),
	.pos6(pos6),
	.pos7(pos7),
	.pos8(pos8),
	.pos9(pos9),
	.ren1(ren1),
	.ren2(ren2),
	.ren3(ren3),
	.ren4(ren4),
	.ren5(ren5),
	.ren6(ren6),
	.ren7(ren7),
	.ren8(ren8),
	.ren9(ren9),
	.bluen1(bluen1),
	.bluen2(bluen2),
	.bluen3(bluen3),
	.bluen4(bluen4),
	.bluen5(bluen5),
	.bluen6(bluen6),
	.bluen7(bluen7),
	.bluen8(bluen8),
	.bluen9(bluen9)
	);
gameVGA_decode DEC_vga (
	.xpos(xpos),
	.ypos(ypos),
	.offsetx(offsetx),
	.offsety(offsety),
	.redWins(redWins),
	.blueWins(blueWins),
	.ren1(ren1),
	.ren2(ren2),
	.ren3(ren3),
	.ren4(ren4),
	.ren5(ren5),
	.ren6(ren6),
	.ren7(ren7),
	.ren8(ren8),
	.ren9(ren9),
	.bluen1(bluen1),
	.bluen2(bluen2),
	.bluen3(bluen3),
	.bluen4(bluen4),
	.bluen5(bluen5),
	.bluen6(bluen6),
	.bluen7(bluen7),
	.bluen8(bluen8),
	.bluen9(bluen9),
	.red(VGA_R),
	.blue(VGA_B),
	.green(VGA_G)
	);



//=======================================================
//  Structural coding
//=======================================================



endmodule
