`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 16:56:39
// Design Name: 
// Module Name: ram_tb
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


module ram_tb;
reg sys_clk;
reg sys_rst_n;
initial
	begin
		sys_clk=1'b1;
		sys_rst_n=1'b0;
	#7 sys_rst_n=1'b1;
	end
 always
	#5	sys_clk<=~sys_clk;
	
	ip_ram ip_ram(
	.sys_clk(sys_clk),
	.sys_rst_n(sys_rst_n)
    );
endmodule
