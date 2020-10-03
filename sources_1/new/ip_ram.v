`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 10:13:02
// Design Name: 
// Module Name: ip_ram
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


module ip_ram(
	input sys_clk,
	input sys_rst_n
    );
    
    wire 	 	  ram_en;	//ʹ��
    wire 	 	  ram_wr_H_rd_L;//ram��дѡ���ź�
    wire [4:0]	  ram_addr;//ram��д��ַ
    wire [7:0]	  ram_wr_data;//ramд����
    wire [7:0]	  ram_rd_data;//ram������
    
    //***************************************************************
    //main code
    
    //ram��дģ��
    ram_rw u_ram_rw(
    .clk(sys_clk),
    .rst_n(sys_rst_n),
    
    .ram_en(ram_en),
    .ram_wr_H_rd_L(ram_wr_H_rd_L),
    .ram_addr(ram_addr),
    .ram_wr_data(ram_wr_data),
    .ram_rd_data(ram_rd_data)
    );
    
    //ram ip��
    blk_mem_gen_0 blk_mem_gen_0(
    .clka(sys_clk),
    .ena(ram_en),
    .wea(ram_wr_H_rd_L),
    .addra(ram_addr),
    .dina(ram_wr_data),
    .douta(ram_rd_data)
    );                      
    
endmodule
