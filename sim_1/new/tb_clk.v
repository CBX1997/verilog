`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/18 10:25:25
// Design Name: 
// Module Name: tb_clk
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


module tb_clk();

clk_wiz_0 clk_wiz_0
(
	.clk_out_100m           (clk_100m),
	.clk_out_50m_180dey     (clk_out_50m_180deg),
	//status and control signals
	.reset                  (~sys_rst_n),          //input reset
	.locked                 (locked),              //output locked
	//CLock in ports
	.clk_in1                (sys_clk)             //inout clk_in1
);   
endmodule
