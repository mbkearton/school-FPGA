module clk_div_DISPLAY (
    input   in_clk,
    output reg out_clk
);
/*
    Speed of clock display may need to change if more digits are being
    driven by this clock. Generally, double speed when driving more
    digits; halve speed when driving fewer digits.

    500 Hz to drive display of 2-3 digits

    50 MHz  / 500 Hz  =  100 KHz     [ratio]
    100 KHz / 2       =  50,000  Hz  [duty cycle == count value]
*/
reg [15:0] dc;	// 16 bits to count 50,000 system clock cycles <-- NORMAL OPERATION

always@(posedge in_clk) begin

    dc <= dc + 1;
    if (dc == 50000) begin		//	50000 for 2-digit ; 25000 for 4-digit
        out_clk <= ~out_clk;
        dc <= 0;
    end
end
endmodule
