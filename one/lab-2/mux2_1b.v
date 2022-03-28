module mux2_1b (
	input 		A,
	input 		B,
	input 		SEL,
	output		M
);
	wire T1, T2;
	
	and	U1 (T1, A, ~SEL);
	and	U2 (T2, B, SEL);
	
	or		U3 (M, T1, T2);


endmodule
