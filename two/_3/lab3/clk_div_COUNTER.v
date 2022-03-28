module clk_div_COUNTER (
    input   in_clk,
    output reg out_clk
);
/*
    50 Hz to count digits slower than persistence of vision (60 Hz)

    50 MHz  / 50 Hz  =  1 MHz        [ratio]
    1  MHz  / 2      =  500,000  Hz  [duty cycle]
*/
//reg [18:0] dc; // 19 bits to hold 500 KHz duty cycle
//reg [19:0] dc;	// dc == 1000000
//reg [20:0] dc;	// dc == 2000000
reg [21:0] dc; 	// dc == 4000000	<-- USE THIS ONE ; 6.25 Hz
//reg [22:0] dc;	// dc == 8000000

always@(posedge in_clk) begin

    dc <= dc + 1'b1;
    if (dc == 4000000) begin
        out_clk <= ~out_clk;
        dc <= 0;
    end
end
endmodule
