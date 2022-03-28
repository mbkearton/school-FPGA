module clock_divider_UART_rx (
    input clock_IN,
    output reg clock_OUT
);
/*
    Receiving a 9600 baud UART tx signal.
    Must oversamlple at:    8 * 9600 Hz = 76,800 Hz

    50 MHz      / 76,800 Hz = 651.0416       [ratio]
    651.0416    / 2         = 325.5208 ~ 326 [duty cycle :: 50%]

    326 == 9'b101000110 [9 bit dc reg]
*/
reg [8:0] dc;

initial begin
    clock_OUT = 0;
end

always@(posedge clock_IN) begin
    dc <= dc + 1;
    if (dc == 326) begin
        clock_OUT <= ~clock_OUT;
        dc <= 0;
    end
end
endmodule
