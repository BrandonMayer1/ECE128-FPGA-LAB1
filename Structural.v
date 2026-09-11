`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2026 03:30:01 PM
// Design Name: 
// Module Name: Structural
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Structural(
input[8:0] i,
input[2:0] s,
output o
    );
    wire NS0,NS1,NS2;
    wire Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7;
   
    not N1(NS0, s[0]);
    not N2(NS1, s[1]);
    not N3(NS2, s[2]);
   
    and A0(Y0, i[0], NS0, NS1, NS2); //000
    and A1(Y1, i[1], NS0, NS1, s[2]); //001
    and A2(Y2, i[2], NS0, s[1], NS2); //010
    and A3(Y3, i[3], NS0, s[1], s[2]); //011
    and A4(Y4, i[4], s[0], NS1, NS2); //100
    and A5(Y5, i[5], s[0], NS1, s[2]); //101
    and A6(Y6, i[6], s[0], s[1], NS2); //110
    and A7(Y7, i[7], s[0], s[1], s[2]); //111
    or O1(o,Y0,Y1,Y2,Y3,Y4,Y5,Y6,Y7);

endmodule 