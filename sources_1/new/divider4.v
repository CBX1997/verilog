`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/16 15:09:52
// Design Name: 
// Module Name: divider4
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


module divider4(
	clk,
	rst_n,
	clk_div
    );
    input clk;
    input rst_n;
    output clk_div;
    reg clk_div;
    
    parameter NUM_DIV = 6;//设定分频倍数
    reg [3:0] cnt;
   		always@(posedge clk or negedge rst_n)
   			if(!rst_n)
   				begin
   					cnt<=4'd0;
   					clk_div<=clk_div;//保持原样
   				end
   				else if(cnt<NUM_DIV/2-1)
   				begin
   					cnt<=cnt+1'b1;
   					clk_div<=clk_div;
   				end
   				else 
   				begin
   					cnt<=4'd0;
   					clk_div <=~clk_div;//反转
   				end
endmodule
