module testbench_UART_TX ();

`timescale 1 ns / 1 ps
//  transmitter inputs
reg clock;
reg start;
reg [7:0] data_IN;
//  transmitter outputs
wire data_OUT;
//  testing variables
integer i;  // loop iterator

UART_transmitter    T_0 (
    .clock(     clock    ),
    .start(     start    ),
    .data_IN(   data_IN  ),
    .data_OUT(  data_OUT )
);

initial begin
    clock = 1;
    start = 0;
    //data_IN = 8'b0101_0010;   // 0101_0010 = 'R'
    data_IN = 8'b0101_0011;     // 0101_0011 = 'S'
    forever begin
        #1 clock = ~clock;
    end
end

initial begin
    #4 start = 1;
    #1 start = 0;

    while (T_0.state != 4) begin
        $display("STATE:\t", T_0.state);
        $display("COUNT:\t", T_0.count);
        #2;
    end
    while (T_0.state == 4) begin
        $display("STATE:\t", T_0.state);
        $display("COUNT:\t", T_0.count);
        #2;
    end
    $display("STATE:\t", T_0.state);
    $display("COUNT:\t", T_0.count);

    $stop;
end

endmodule
