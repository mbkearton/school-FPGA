module clock_divider_UART (
    input       clock_IN,
    output reg  clock_OUT
);
/*
    9600 Hz baud rate

    50 MHz  / 9600 Hz   =  5208  [ratio]
    5208 	/ 2         =  2604  [duty cycle :: 50%]

    2604 == 12'b1010 0010 1100      [12 bit dc reg]
*/
reg [11:0] dc;

initial begin
	clock_OUT = 0;
end

always@(posedge clock_IN) begin

    dc <= dc + 1;
    if (dc == 2604) begin
        clock_OUT <= ~clock_OUT;
        dc <= 0;
    end
end
endmodule
