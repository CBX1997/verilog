`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT
// Engineer: CBX1997
// 
// Create Date: 2020/07/28 10:03:22
// Design Name: 
// Module Name: counter2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 	Asynchronous clearing counter described 
//                by always procedure statement
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter2(
			rst,
			clk,
			out
								);
output[7:0] out;
input clk,rst;
reg[7:0] out;
always @(posedge clk or negedge rst)
		begin
			if(!rst)
				out<=0;
			else out<=out+1;
		end
endmodule