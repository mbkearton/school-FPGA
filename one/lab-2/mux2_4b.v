module mux2_4b (
	input		[3:0] A,
	input		[3:0]	B,
	input				SEL,
	output	[3:0]	M
); 
	mux2_1b m0 (.A(A[3]),.B(B[3]),.SEL(SEL),.M(M[3]));
	mux2_1b m1 (.A(A[2]),.B(B[2]),.SEL(SEL),.M(M[2]));
	mux2_1b m2 (.A(A[1]),.B(B[1]),.SEL(SEL),.M(M[1]));
	mux2_1b m3 (.A(A[0]),.B(B[0]),.SEL(SEL),.M(M[0]));	
	
endmodule
