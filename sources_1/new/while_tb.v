`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/08/01 09:56:07
// Design Name: 
// Module Name: while_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Generating clock signal with while statement
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module while_tb;
  		reg clock;
  		initial
  				begin
  					clock<=0;
  					while(1)
  					#50 clock<=~clock;
  				end
endmodule
