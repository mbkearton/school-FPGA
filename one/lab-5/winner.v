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
module winner (
    input [2:0] pos1,
    input [2:0] pos2,
    input [2:0] pos3,
    input [2:0] pos4,
    input [2:0] pos5,
    input [2:0] pos6,
    input [2:0] pos7,
    input [2:0] pos8,
    input [2:0] pos9,
    output redWins,
    output blueWins
);

assign redWins =
    (pos1[2] & pos1[0] & pos2[2] & pos2[0] & pos3[2] & pos3[0]) | // top row
    (pos4[2] & pos4[0] & pos5[2] & pos5[0] & pos6[2] & pos6[0]) | // middle row
    (pos7[2] & pos7[0] & pos8[2] & pos8[0] & pos9[2] & pos9[0]) | // bottom row
    (pos1[2] & pos1[0] & pos4[2] & pos4[0] & pos7[2] & pos7[0]) | // left column
    (pos2[2] & pos2[0] & pos5[2] & pos5[0] & pos8[2] & pos8[0]) | // middle column
    (pos3[2] & pos3[0] & pos6[2] & pos6[0] & pos9[2] & pos9[0]) | // right column
    (pos1[2] & pos1[0] & pos5[2] & pos5[0] & pos9[2] & pos9[0]) | // diagonal "\"
    (pos3[2] & pos3[0] & pos5[2] & pos5[0] & pos7[2] & pos7[0]);  // diagonal "/
assign blueWins =
    (pos1[2] & pos1[1] & pos2[2] & pos2[1] & pos3[2] & pos3[1]) | // top row
    (pos4[2] & pos4[1] & pos5[2] & pos5[1] & pos6[2] & pos6[1]) | // middle row
    (pos7[2] & pos7[1] & pos8[2] & pos8[1] & pos9[2] & pos9[1]) | // bottom row
    (pos1[2] & pos1[1] & pos4[2] & pos4[1] & pos7[2] & pos7[1]) | // left column
    (pos2[2] & pos2[1] & pos5[2] & pos5[1] & pos8[2] & pos8[1]) | // middle column
    (pos3[2] & pos3[1] & pos6[2] & pos6[1] & pos9[2] & pos9[1]) | // right column
    (pos1[2] & pos1[1] & pos5[2] & pos5[1] & pos9[2] & pos9[1]) | // diagonal "\"
    (pos3[2] & pos3[1] & pos5[2] & pos5[1] & pos7[2] & pos7[1]);  // diagonal "/
endmodule
