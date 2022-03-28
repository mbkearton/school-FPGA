module UART_transmitter (
	input 		clock,
	input 		start,
	input [7:0] data_IN,
	output reg 	data_OUT
);
parameter IDLE = 0, SHIFT = 1, PARITY = 2, STOP_1 = 3, STOP_2 = 4;

reg [2:0] state;	// 5 states == 3'b101
reg [2:0] next_state;
reg [3:0] count;	// 8 shifts == 3'b111
reg [7:0] storage;	// 8 bits stored

reg parity_bit;

initial begin
	state = IDLE;
	count = 0;
	storage = 0;
	data_OUT = 1;
end
/*
	1	:	START
	2	:	DATA	[LSB]
	3	:	DATA
	4	:	DATA
	5	:	DATA
	6	:	DATA
	7	:	DATA
	8	:	DATA
	9	:	DATA	[MSB]
	10	:	PARITY	(assign parity = ^i)
	11	:	STOP
	12	:	STOP
*/

//	next_state logic
always@(posedge clock) begin
	case (state)
		IDLE:	begin
			if (start) begin
				count <= 0;
				storage <= data_IN;
				parity_bit <= ^data_IN;
				state <= SHIFT;
			end
			else state <= IDLE;
		end
		SHIFT:	begin
			if (count >= 7) state <= PARITY;
			else count <= count + 1;
		end
		PARITY:
			state <= STOP_1;

		STOP_1:
			state <= STOP_2;

		STOP_2:
			state <= IDLE;

	endcase
end

//	output logic
always@(posedge clock) begin

	case (state)
		IDLE:	begin
			if (!start) data_OUT <= 1'b1;
			else data_OUT <= 1'b0;
		end
		SHIFT:
			data_OUT <= storage[count];

		PARITY:
			data_OUT <= parity_bit;

		STOP_1:
			data_OUT <= 1'b1;

		STOP_2:
			data_OUT <= 1'b1;

	endcase
end

endmodule
