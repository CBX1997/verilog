`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/22 09:14:46
// Design Name: 
// Module Name: tb_salegoods
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


module tb_salegoods;

reg clk,a,b,choice,reset_n;

wire a_out,b_out,out_goods,out_in_coin,out_choice_coin,out_back_coin;

salegoods SALE(
    
    .clk(clk),//时钟
    .reset_n(reset_n),
	.a(a),//5的个数
	.b(b),//10的个数
	.choice(choice),//选货信号，为1时40
	
	.a_out(a_out),//退回的5
	.b_out(b_out),//退回的10
	.out_goods(out_goods),//出货。高位出货
	
	.out_in_coin(out_in_coin),
	.out_choice_coin(out_choice_coin),
	.out_back_coin(out_back_coin),
	.out_money(out_money)
	
    );

	always
		#5 clk = ~clk;
	initial
		begin
			clk = 0;
			#3 reset_n = 0;
			#5 reset_n = 1;
			
			a=1;
			b=4;
			choice=1;
			
			#50 a=1;
			    b=1;
			    choice=1;
			    
			#50 a=4;
				b=4;
				choice=1;
				
			#50 a=4;
				b=4;
				choice=0;
			
			#50 a=4;
				b=4;
				choice=1;
			
			#50 a=3;
				b=2;
				choice=1;
				
			#50 a=0;
				b=0;
				choice=0;
			
		end 

endmodule
