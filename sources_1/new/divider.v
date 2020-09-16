`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/16 19:45:47
// Design Name: 
// Module Name: divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module divider(
		clk,
		rst_n,
		clk_div
    );
    input clk,rst_n;
    output clk_div;
    reg clk_div;
    
    reg [15:0] counter;
    
always @(posedge clk or negedge rst_n)
	if(!rst_n)
		counter <=0;
	else if (counter==56187)
		counter <=0;
	else
		counter<=counter+1;
	assign clk_div = counter[15];		
endmodule
