`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/08/03 23:43:28
// Design Name: 
// Module Name: shift_regist
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 8-bit shift register
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_regist(
			Q,
			D,
			rst,
			clk
								    );
output [7:0] Q;
input	 D,
			 rst,
			 clk;
reg[7:0] Q;
always @(posedge clk)
	if(!rst)
		Q<=8'b000000;
	else
	Q<={Q[6:0],D}								  
endmodule
