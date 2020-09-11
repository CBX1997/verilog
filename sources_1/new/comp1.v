`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/11 16:16:35
// Design Name: 
// Module Name: comp1
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


module four_bits_comp1(F,A,B,C);
	parameter comp_width = 4;
	output [2:0] F;
	input [2:0] C;
	input [comp_width-1:0] A;
	input [comp_width-1:0] B;
	reg [2:0] F;
		always @(A or B or C)
			if(A>B) 		F = 3'b100;
			else if(A<B) 	F = 3b'001;
			else			F = C;
endmodule
