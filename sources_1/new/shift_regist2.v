`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/08/04 21:53:11
// Design Name: 
// Module Name: shift_regist2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 8-bit shift register implemented by for statement
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_regist2(
				Q,
				D,
				rst,
				clk
		    );
output [7:0] Q;
input D,rst,clk;
reg[7:0] Q;

integer i;

always@(posedge clk)
	if(!rst)
		Q<=8'b000000;
	else
		begin
			for(i=7;i>0;i=i-1)
			Q[i]<=Q[i-1];
			Q[0]<=D;
		end		   
endmodule
