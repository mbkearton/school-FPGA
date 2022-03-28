module UART_tx_5char (
    input clock,
    input start,
    output tx_OUT
);
parameter char_C = 8'b01000011;
parameter char_H = 8'b01001000;
parameter char_I = 8'b01001001;
parameter char_P = 8'b01010000;
parameter char_S = 8'b01010011;

reg [7:0] character [4:0];
reg [3:0] tx_cycle_count;
reg [2:0] char_count;
reg start_flag;
reg tx_flag;

UART_transmitter	T_0 (
	.clock(clock),
	.start(start_flag),
	.data_IN(character[char_count]),
	.data_OUT(tx_OUT)
);

initial begin
    character[0] = char_C;
    character[1] = char_H;
    character[2] = char_I;
    character[3] = char_P;
    character[4] = char_S;
    tx_cycle_count = 0;
    char_count = 0;
    start_flag = 0;
    tx_flag = 0;
end

always@(posedge clock)   begin

    if (start && !tx_flag) begin
        tx_flag <= 1;
		  start_flag <= 1;
	 end
    else if (char_count < 5 && tx_flag) begin
        if (tx_cycle_count < 12) begin
            if (tx_cycle_count == 0)
                start_flag <= 0;
            tx_cycle_count <= tx_cycle_count + 1;
        end
        else begin
            tx_cycle_count <= 0;
            char_count <= char_count + 1;
				if (char_count < 4)
					start_flag <= 1;
        end
    end
    else begin
		  start_flag <= 0;
        char_count <= 0;
        tx_flag <= 0;
    end
end

endmodule
