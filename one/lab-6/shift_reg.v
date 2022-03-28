module shift_reg (
    input             reset,
    input             clock,
    input             sin,
    input             l_r,
    input             load,
    input      [3:0]  D,
    output reg [3:0]  Q,
    output reg        sout
);

initial begin
    Q = 4'd0;
    sout = 1'b0;
end

always@(posedge clock or posedge reset) begin
    if (reset) begin               // asynchronous reset
        Q <= 4'd0;
        sout <= 1'b0;
    end
    else if (load == 0) begin
        if (l_r == 1) begin         //  load == 0;  l_r == 1; shift left
            sout <= Q[3];
            Q[3:1] <= Q[2:0];
            Q[0] <= sin;
        end
        else if (l_r == 0) begin    //  load == 0;  l_r == 0; shift right
            sout <= Q[0];
            Q[3] <= sin;
            Q[2:0] <= Q[3:1];
        end
    end
    else if (load == 1) begin       //  load == 1;  parallel load
        Q <= D;
    end
end

endmodule
