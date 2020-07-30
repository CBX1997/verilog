`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/07/30 09:51:35
// Design Name: 
// Module Name: repeat_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:Use the repeat statement to generate a fixed number of cycles of the clock signal
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module repeat_tb;
		reg clock;
		initial
			begin
				clock<=0;
				repeat(8)
					clock<=~clock;
			end
endmodule
