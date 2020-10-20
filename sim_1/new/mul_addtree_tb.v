`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/20 10:00:07
// Design Name: 
// Module Name: mul_addtree_tb
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


module mul_addtree_tb;
	reg[3:0]mult_a;
	reg[3:0]mult_b;
	wire[7:0]mult_out;
	
	mul_addtree U1(.mul_a(mult_a),.mul_b(mult_b),.mul_out(mult_out));
	
	initial
		begin
			mult_a =0;
			mult_b =0;
			repeat(9)
			
			begin
				#20 mult_a =mult_a+1;
				mult_b =mult_b+1;				
			end
		end    
endmodule
