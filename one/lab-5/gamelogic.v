/*
--------------------------------------------------------------------------------
--
--   FileName:         gamelogic.v
--   Dependencies:     none
--   Design Software:  Quartus Prime Standard Edition
--
--   HDL CODE IS PROVIDED "AS IS."
--
--   Version History
--   Version 1.0 27.10.17 Kevin Pintong
--     Initial Public Release
--
--------------------------------------------------------------------------------
*/
module gamelogic (
    input [3:0] position,   // position of selector
    input vga_clk,
    input place,            // active LO
    input reset,            // active HI
    output reg [2:0]  pos1,	//pos keeps track of the following: 000 = empty; 010 = blue; 001 = red
    output reg [2:0]  pos2,
    output reg [2:0]  pos3,
    output reg [2:0]  pos4,
    output reg [2:0]  pos5,
    output reg [2:0]  pos6,
    output reg [2:0]  pos7,
    output reg [2:0]  pos8,
    output reg [2:0]  pos9
);
    reg player; // player = 0 = blue != red = 1

initial begin
    {player, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9} = 28'd0;
end

always@(negedge place or posedge reset) begin
    if (reset) {player, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9} = 28'd0;
    else if (~place) begin
        case (position)
            4'b0001: begin
                pos1 = ~pos1[2] ? (player ? 3'b110 : 3'b101) : pos1;
                player = pos1[2] == 1'b1 ? ~player : player;
            end
            4'b0010: begin
                pos2 = ~pos2[2] ? (player ? 3'b110 : 3'b101) : pos2;
                player = pos2[2] == 1'b1 ? ~player : player;
            end
            4'b0011: begin
                pos3 = ~pos3[2] ? (player ? 3'b110 : 3'b101) : pos3;
                player = pos3[2] == 1'b1 ? ~player : player;
            end
            4'b0100: begin
                pos4 = ~pos4[2] ? (player ? 3'b110 : 3'b101) : pos4;
                player = pos4[2] == 1'b1 ? ~player : player;
            end
            4'b0101: begin
                pos5 = ~pos5[2] ? (player ? 3'b110 : 3'b101) : pos5;
                player = pos5[2] == 1'b1 ? ~player : player;
            end
            4'b0110: begin
                pos6 = ~pos6[2] ? (player ? 3'b110 : 3'b101) : pos6;
                player = pos6[2] == 1'b1 ? ~player : player;
            end
            4'b0111: begin
                pos7 = ~pos7[2] ? (player ? 3'b110 : 3'b101) : pos7;
                player = pos7[2] == 1'b1 ? ~player : player;
            end
            4'b1000: begin
                pos8 = ~pos8[2] ? (player ? 3'b110 : 3'b101) : pos8;
                player = pos8[2] == 1'b1 ? ~player : player;
            end
            4'b1001: begin
                pos9 = ~pos9[2] ? (player ? 3'b110 : 3'b101) : pos9;
                player = pos9[2] == 1'b1 ? ~player : player;
            end
            default: {pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9} = {pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9};
        endcase
    end
end
endmodule
