module rgb_dec
(   
    input [2:0] sel,
    input pwm,
    output reg R,
    output reg G,
    output reg B
);
parameter RED = 3'b100;
parameter GREEN = 3'b010;
parameter BLUE = 3'b001;

always@(*)
begin
    case(sel)
        RED: {R, G, B} = {pwm, 2'b11};
        GREEN: {R, G, B} = {1'b1, pwm, 1'b1};
        BLUE: {R, G, B} = {2'b11, pwm};
    endcase
end

endmodule
