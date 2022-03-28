//Fake 2-digit seven segment display


module fake_SSEG_2(
	input ANODE_0,
	input ANODE_1,
	input		     [7:0]		CATHODE_HEX,
/*	input		     [7:0]		CATHODE_HEX1,
	input		     [7:0]		CATHODE_HEX2,
	input		     [7:0]		CATHODE_HEX3,
	input		     [7:0]		CATHODE_HEX4,
	input		     [7:0]		CATHODE_HEX5,*/
	output		reg     [7:0]		REAL_HEX0,
	output		reg     [7:0]		REAL_HEX1
/*	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,*/

);


always@(*)
begin 
	case({ANODE_1,ANODE_0}) 
		2'b01: begin
				REAL_HEX0 = 8'bzzzzzzzz;
				REAL_HEX1 = CATHODE_HEX;
		end
		2'b10: begin
				REAL_HEX1 = 8'bzzzzzzzz;
				REAL_HEX0 = CATHODE_HEX;	
		end
		2'b11: begin
				REAL_HEX0 = CATHODE_HEX;
				REAL_HEX1 = CATHODE_HEX;
		end
		2'b00: begin
				REAL_HEX0 = 8'b11111111;
				REAL_HEX1 = 8'b11111111;
		
		end		
	endcase

end



endmodule
