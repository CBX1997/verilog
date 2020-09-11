`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/11 22:35:35
// Design Name: 
// Module Name: BCD8421
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


module BCD8421(data_out,data_in);
	output [3:0] data_out;
	input [8:0] data_out;
	reg[3:0] data_out;
		always@(data_in)
			case(data_in)
				9'b000_000_000: data_out = 4'b0000;
				9'b000_000_001: data_out = 4'b0001;
				9'b000_000_010: data_out = 4'b0010;
				9'b000_000_100: data_out = 4'b0011;
				9'b000_001_000: data_out = 4'b0100;
				9'b000_010_000: data_out = 4'b0101;
				9'b000_100_000: data_out = 4'b0110;
				9'b001_000_000: data_out = 4'b0111;
				9'b010_000_000: data_out = 4'b1000;
				9'b100_000_000: data_out = 4'b1001;
				default : data_out =4'b0000;
			endcase				
endmodule
