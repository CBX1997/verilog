`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/13 00:58:32
// Design Name: 
// Module Name: mux4_1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A 1 out of 4 data selector
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux4_1(
    input [0:0] in0,
    input [0:0] in1,
    input [0:0] in2,
    input [0:0] in3,
    input [1:0] sel,
    output out
    );
    reg out;
    always@(in0,in1,in2,in3,sel)
    case(sel)
        2'b00: out=in0;
        2'b01: out=in1;
        2'b10: out=in2;
        2'b11: out=in3;
        default: out=2'bx;
    endcase
endmodule
