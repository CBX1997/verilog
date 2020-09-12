`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/09/12 17:12:51
// Design Name: 
// Module Name: checker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 8-bit parity checker
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module checker(Fod,Fev,b);
	output Fod,Fev;
	input [7:0]b;
	assign Fod = ^b;
	assign Fev = ~Fod;
endmodule
	
endmodule
