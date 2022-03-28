module clk_div_COUNT
(
    input clock_IN,
    output clock_OUT
);
/*
    50 MHz / 15 Hz = 3333332
    3333332 / 2 = 1666666
*/
parameter DC_MAX = 1666666;
reg [25:0] dc;

always@(posedge clock_IN) dc <= (dc < DC_MAX) ? dc + 1 : 0;

assign clock_OUT = (dc < DC_MAX) ? clock_OUT : ~clock_OUT;

endmodule
