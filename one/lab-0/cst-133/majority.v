module majority3 (
    input x1,
    input x2,
    input x3,
    output f
);

assign f = (x1 & x2) | (x1 & x3) | (x2 & x3);
endmodule
