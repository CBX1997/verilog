`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/07/13 00:29:33
// Design Name: 
// Module Name: dff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A rising edge triggered D flip flop
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff(din,clk,q );
input din,clk;
output q;
reg q;
always@(posedge clk)
            q<=din;
endmodule
