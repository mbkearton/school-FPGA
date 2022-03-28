module testbench_counter_5b;

reg clock;
reg enable;
reg up_down;
reg reset;
wire [4:0] count;

integer i = 0;

counter_5b testee (
    .clock(clock),
    .enable(enable),
    .reset(reset),
    .up_down(up_down),
    .counter(count)
);

`timescale 1 ns / 1 ps
//  generate clock signal and initialize logic values
initial begin
    clock = 1;
    enable = 1;
    reset = 0;
    up_down = 1;   //  begin with counting up
    $monitor ("[%t]\tCount is:\t%d", $time, count);
    forever begin
        #1 clock = ~clock;
    end
end
//  actual testbench work; pulse reset, count up/down 
initial begin
    #1 reset = 1;
    #2 reset = 0;
    while (i < 32) begin
        #2;
        i = i + 1;
    end
    up_down = 0; //  begin counting down
    i = 32;
    while (i > 0) begin
        #2;
        i = i - 1;
    end
    $stop;
end
endmodule
