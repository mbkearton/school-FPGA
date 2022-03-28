module testbench_UART_RX ();

`timescale 1 ns / 1 ps
//  receiver inputs
reg rx_clock;
reg data_IN;
//  receiver outputs
wire [7:0] data_OUT;
wire       done;
wire       parity_error;
//  testing variables
integer i = 0;
reg [9:0] character = 10'b1010100100;
/*
    0101_0010 == 'R'

    s s p _ 0 1 0 1 0 0 1 0 _ 0
    ^ ^ ^                     ^
    ^ ^ parity bit            ^
    ^ ^                       start bit
    ^ stop bit [n/a]
    ^
    stop bit [n/a]

    10'b1010100100 == 'R' tx w/ proper parity == decimal 676
    10'b0010100100 == 'R' tx w/ bad parity    == decimal 164
*/

UART_receiver   T_0
(   // IN
    .clock  ( rx_clock   ),
    .data_IN( data_IN ),
    // OUT
    .data_OUT    ( data_OUT     ),
    .done        ( done         ),
    .parity_error( parity_error )
);

initial
begin
    rx_clock = 1;
    data_IN = 1;
    forever
    begin
        #1 rx_clock = ~rx_clock;
    end
end

// initial
// begin
//     $monitor("STATE:\t%d", T_0.state);
//     $monitor("CHARACTER IN:\t%d", data_OUT);
// end

initial
begin
    $display("STATE:\t%d", T_0.state);
    $display("CHARACTER IN:\t%d", data_OUT);
    #4 data_IN = character[i];
    #8; // wait 4 cycles for receiver sampling to reach mid-start bit

    while (!done)
    begin
        for (i = 0; i < 9; i = i + 1) // 9 bits read in; 8 data, 1 parity
        begin
            $display("STATE:\t%d", T_0.state);
            #16; // wait 8 cycles for receiver to reach mid-bit
            data_IN = character[i];
        end
    end
    $display("STATE:\t%d", T_0.state);
    $display("CHARACTER IN:\t%d", data_OUT);

    $stop;
end

endmodule
