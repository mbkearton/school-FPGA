module updown_counter
(
    input clock_IN,
    output reg [6:0] count
);
reg up; // count up at 1; count down at 0

initial
begin
	count = 7'b1111111;
	up = 0;
end

always@(posedge clock_IN)
begin

    if (&count && up)
    begin // if count at max, reverse direction
        up <= ~up;
        count <= count - 1;
    end
    else if (!count && !up)
    begin // if at min, reverse direction
        up <= ~up;
        count <= count + 1;
    end
    else  // otherwise, increment/decrement depending on up
        count <= up ? count + 1 : count - 1;
end

endmodule
