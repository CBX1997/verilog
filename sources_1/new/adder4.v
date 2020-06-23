`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/06/22 23:44:21
// Design Name: 
// Module Name: adder4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  a 4bit adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder4(cout,sum,ina,inb,cin);
output[3:0] sum;
output cout;
input[3:0] ina,inb;
input cin;
assign {cout,sum}=ina+inb+cin;
endmodule
