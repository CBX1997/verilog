`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/09/16 16:01:34
// Design Name: 
// Module Name: divider5
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


module divider5(
		clk,
		rst_n,
		clk_div
    );
    input clk;
    input rst_n;
    output clk_div;
    reg clk_div;
    
    parameter NUM_DIV = 5;
    reg[2:0] cnt1;
    reg[2:0] cnt2;
    reg clk_div1,clk_div2;
    always@(posedge clk or negedge rst_n)
		if(!rst_n)
			cnt1<=0;
		else if(cunt1<NUM_DIV-1)//五个为一个周期
			cnt1<=cnt1+1'b1;
		else
			cnt1<=0;
	always@(posedge clk or negedge rst_n)
		if(!rst_n)
			clk_divl<=1'b1;
		else if(cnt1<NUM_DIV/2)	
			clk_div1<=1'b1;
		else
			clk_div<=1'b0;
	always@(negedge clk or negedge rst_n)
		if(!rst_n)
			cnt2<=0;
		else if (cnt2<NUM_DIV-1)
			cnt2<=cnt2+1'b1;
		else
			cnt2<=0;
	always@(negedge clk or negedge rst_n)
		if(!rst_n)
			clk_div2<=1'b1;
		else if(cnt2<NUM_DIV/2)
			clk_div2<=1'b1;
		else
			clk_div2<=1'b0;
			
	assign clk_div = clk_div1|clk_div2;//按位或
					
		
endmodule
