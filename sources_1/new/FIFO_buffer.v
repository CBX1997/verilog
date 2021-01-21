`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/16 20:53:34
// Design Name: 
// Module Name: FIFO_buffer
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

//顶层模块
module FIFO_buffer(
	clk,
	rst,
	write_to_stack,
	read_from_stack,
	Data_in,
	Data_out
    );
    input clk,rst;
    inout write_to_stack,read_from_stack;
    
    input [7:0] Data_in;
    output [7:0] Data_out;
    wire [7:0] Data_out;
    wire stack_full,stack_empty;
    wire [2:0] addr_in,addr_out;
    FIFO_control U1(.stack_full(stack_full),
    				.stack_empty(stack_empty),
    				.write_to_stack(write_to_stack),
    				.read_ptr(addr_out),
    				.read_from_stack(read_from_stack),
    				.clk(clk),
    				.rst(rst)
    				);
    ram_dual U2(
    				.q(Data_out),
    				.addr_in(addr_in),
    				.addr_out(addr_out),
    				.d(Data_in),
    				.we(write_to_stack),
    				.rd(read_from_stack),
    				.clk1(clk),
    				.clk2(clk)
    				);
    				
endmodule
//控制模块
module FIFO_control(
					write_ptr,
					read_ptr,
					stack_full,
					stack_empty,
					write_to_stack,
					read_from_stack,
					clk,
					rst									
					);
					
	parameter stack_width =8;//	堆栈宽度			
	parameter stack_height = 8;//堆栈深度
	parameter stack_ptr_width = 3;
	
	output stack_full;//堆栈满标志
	output stack_empty;//堆栈空标志
	output [stack_ptr_width-1:0] read_ptr;//读数据地址
	output [stack_ptr_width-1:0] write_ptr;//写数据地址
	input read_from_stack;//将数据读出堆栈
	input write_to_stack;//将数据写入堆栈
	input clk;
	input rst;
	
	reg [stack_ptr_width-1:0] read_ptr;
	reg [stack_ptr_width-1:0] write_ptr;
	reg [stack_ptr_width:0] ptr_gap;
	reg [stack_width-1:0] Data_out;
	reg [stack_width-1:0] stack[stack_height-1:0];//堆栈的状态信号
	
	assign stack_full=(ptr_gap==stack_height);
	assign stack_empty=(ptr_gap==0);
	
	always@(posedge clk or posedge rst)
		begin
			if(rst)
				begin
					Data_out <= 0;
					read_ptr <= 0;
					write_ptr <= 0;
					ptr_gap <= 0;
				end
				
				else if(write_to_stack&&(!stack_full)&&(!read_from_stack))//正常的写
					begin
						write_ptr <= write_ptr+1;
						ptr_gap <= ptr_gap+1;
																		
					end
				else if((!write_to_stack)&&(!stack_empty)&&read_from_stack)//正常的读
					begin
						read_ptr <= read_ptr+1;
						ptr_gap <= ptr_gap-1;						
					end
				else if(write_to_stack&&stack_empty&&read_from_stack)//只写
					begin
						write_ptr
					end
				
				
				
		end
	
	
	
	  
	

    				
    				
    				
    
    
    )
endmodule
