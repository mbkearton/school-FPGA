module blink_controller
(
    input      clock_IN, // 15 Hz in, needs to be in sync with up-down counter
    output reg R,        // RED enable
    output reg B,        // BLUE enable
    output reg G         // GREEN enable
);
reg [9:0] count; // 762 / 3 = 254 cycles per color (127 up, 127 down)

initial
begin
    count = 0;
end

always@(posedge clock_IN) begin
    // increment count on every clock edge
    count <= count + 1'b1;
    // unless counter has counted three full up-down cycles then reset to zero
    if (count >= 762)
        count <= 0;
end

always@(*) begin

    if(count < 254) // still within first up-down cycle
    begin // passing duty cycle along to RED cathode only
        R = 1'b1;
        G = 1'b0;
        B = 1'b0;
	end
	else if (count < 508) // still within second up-down cycle
    begin // passing duty cycle along to BLUE cathode only
		R = 1'b0;
		G = 1'b0;
		B = 1'b1;
	end
	else if(count < 762) // still within third up-down cycle
    begin // passing duty cycle along to GREEN cathode only
		R = 1'b0;
		G = 1'b1;
		B = 1'b0;
	end
end
//  ORIGINAL CODE BELOW
//assign R = (count < 254) ? 1'b1 : 1'b0;
//assign B = (count >= 254 && count < 508) ? 1'b1 : 1'b0;
//assign G = (count >= 508) ? 1'b1 : 1'b0;
//always@(posedge clock_IN) count <= (count < 762) ? count + 1 : 0;
endmodule
