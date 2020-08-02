`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/08/02 09:38:35
// Design Name: 
// Module Name: for_clk
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Generating clock signal with for statement
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module for_clk;
		reg clk;
		integer i;
		initial
			begin
				clk<=0;
				for(i=0,i>=0,i=i+1)
				#50 clk<=~clk;
			end
endmodule
