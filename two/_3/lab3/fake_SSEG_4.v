//Fake 2-digit seven segment display


module fake_SSEG_4(
	input ANODE_0,
	input ANODE_1,
	input ANODE_2,
	input ANODE_3,
	input		     [7:0]		CATHODE_HEX,
/*	input		     [7:0]		CATHODE_HEX1,
	input		     [7:0]		CATHODE_HEX2,
	input		     [7:0]		CATHODE_HEX3,
	input		     [7:0]		CATHODE_HEX4,
	input		     [7:0]		CATHODE_HEX5,*/
	output		reg     [7:0]		REAL_HEX0,
	output		reg     [7:0]		REAL_HEX1,
	output		reg     [7:0]		REAL_HEX2,
	output		reg     [7:0]		REAL_HEX3
/*	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5,*/

);


always@(*) begin 
	case({ANODE_3, ANODE_2, ANODE_1,ANODE_0}) 
		4'b0001: begin
			REAL_HEX0 = CATHODE_HEX;
			REAL_HEX1 = 8'bzzzzzzzz;
			REAL_HEX2 = 8'bzzzzzzzz;
			REAL_HEX3 = 8'bzzzzzzzz;
		end
		4'b0010: begin
			REAL_HEX0 = 8'bzzzzzzzz;
			REAL_HEX1 = CATHODE_HEX;
			REAL_HEX2 = 8'bzzzzzzzz;
			REAL_HEX3 = 8'bzzzzzzzz;
		end
		4'b0100: begin
			REAL_HEX0 = 8'bzzzzzzzz;
			REAL_HEX1 = 8'bzzzzzzzz;
			REAL_HEX2 = CATHODE_HEX;
			REAL_HEX3 = 8'bzzzzzzzz;
		end
		4'b1000: begin
			REAL_HEX0 = 8'bzzzzzzzz;
			REAL_HEX1 = 8'bzzzzzzzz;
			REAL_HEX2 = 8'bzzzzzzzz;
			REAL_HEX3 = CATHODE_HEX;
		end
		default:	begin
			REAL_HEX0 = 8'b11111111;
			REAL_HEX1 = 8'b11111111;
			REAL_HEX2 = 8'b11111111;
			REAL_HEX3 = 8'b11111111;
		end		
	endcase
end

endmodule
