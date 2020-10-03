`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/27 11:02:54
// Design Name: 
// Module Name: ram_rw
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


module ram_rw(
	input 				clk,
	input				rst_n,
	
	output	reg			ram_en,
	output	reg			ram_wr_H_rd_L,
	output	reg	[4:0]	ram_addr,
	output	reg [7:0]	ram_wr_data,
	input		[7:0]	ram_rd_data
    );
    //reg define
    reg	[5:0]	rw_cnt;
    //*******************************
    //main code
    //*******************************
    
    //设置RAM使能信号
    always@(posedge clk)
    	begin
    		if(rst_n==1'b0)
    			ram_en<=1'b0;
    		else
    			ram_en<=1'b1;    			
    	end
    //读写控制计数器，计数范围0——63
    always@(posedge clk)
    	begin
    		if(rst_n==1'b0)
    			rw_cnt<=6'd0;
    		else if(rw_cnt==6'd63)
    			rw_cnt<=6'd0;
    		else
    			rw_cnt<=rw_cnt+6'd1;
    	end
    	//设置RAM写数据
    	always@(posedge clk )
    		begin
    			if(rst_n==1'b0)
    				ram_wr_data<=8'd0;
    			else if((rw_cnt<=6'd31)&&ram_en)
    			
    				ram_wr_data<=ram_wr_data+8'd1;
    			else
    				ram_wr_data<=ram_wr_data;
    		end
    		
    //设置RAM读写选择信号
    		always@(posedge clk)
    			begin
    				if(rst_n==1'b0)
    					ram_wr_H_rd_L<=1'b1;
    				else if(rw_cnt<=6'd31)//在计数器的0-31范围内，是写操作
    					ram_wr_H_rd_L<=1'b1;
    				else 
    					ram_wr_H_rd_L<=1'b0;    					
    			end
   //设置RAM读写地址
   	always@(posedge clk)
   		begin
   			if(rst_n==1'b0)
   				ram_addr<=5'd0;
   			else
   				ram_addr<=rw_cnt[4:0];
   		end
//例化ILA
ila_0 ila_0(
	.clk(clk),//input wire clk
	
	
	.probe0(ram_en),
	.probe1(ram_wr_H_rd_L),
	.probe2(rw_cnt),
	.probe3(ram_addr),
	.probe4(ram_wr_data),
	.probe5(ram_rd_data)

);
   		
    	
endmodule
