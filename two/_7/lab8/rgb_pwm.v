module rgb_pwm
(
    input       clock_IN, // 50 MHz in
    input       en,       // color enable from blink controller
    input [6:0] dc,       // duty cycle from up-down counter
    output reg  clock_OUT // connected directly to color cathode; idles high
);
reg [6:0] count; // internal count to compare against duty cycle

initial
begin
    count = 0;
    clock_OUT = 0;
end

always@(posedge clock_IN)
begin

    if (en)
    begin // only counting when enabled
        count <= count + 1; // increment each clock edge; rolls over by default

        if (count < dc) // sets clock high while internal count is below dc
            clock_OUT <= 1;
        else // otherwise, go low for remaining clock period
            clock_OUT <= 0;
    end
    else // if disabled, cathode will be set high, turning off that color
        clock_OUT <= 1;
end

endmodule
