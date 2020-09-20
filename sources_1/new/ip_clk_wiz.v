`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/17 16:55:41
// Design Name: 
// Module Name: ip_clk_wiz
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


module ip_clk_wiz(
     input             sys_clk,
     inout             sys_rst_n,
     //输出时钟
     output            clk_100m,
     output            clk_50m_180deg,
     output            locked             //MMCM/PLL锁定知识
    );
clk_wiz_0 clk_wiz_0
(
	.clk_out_100m           (clk_100m),
	.clk_out_50m_180        (clk_out_50m_180deg),
	//status and control signals
	.reset                  (~sys_rst_n),          //input reset
	.locked                 (locked),              //output locked
	//CLock in ports
	.clk_in1                (sys_clk)             //inout clk_in1
);    
endmodule
