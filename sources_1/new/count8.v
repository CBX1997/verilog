`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/07/16 23:42:27
// Design Name: 
// Module Name: count8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 8-bit synchronous setting asynchronous clearing counter
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module count8(
							clk,
							rst,
							out,
							data,
							load
              );
              
input [7:0]  data;
input load,
			clk,
			rst;

output [7:0] out;


reg[7:0] out;
always @(posedge clk)
      begin
      	if(!rst) 
      		out<=8'00;
      	else if(load) 
      		out<=data;
      	else 
      		out<=out+1;
      end
endmodule
