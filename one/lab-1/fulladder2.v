// Michael Kearton
// Structural design for a full adder using Verilog  
module fulladder2( 
 	input  A, B, Cin,  	
	output Sum, Cout); 
	
	assign Sum = A ^ B ^ Cin;
	assign Cout = (A & B) + (B & Cin) + (A & Cin);

endmodule
