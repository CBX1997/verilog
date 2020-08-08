`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/08/08 23:31:31
// Design Name: 
// Module Name: shifter_D
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Four bit shift register with D flip flop
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module diff(d,clk,clr,q);
	input d,clk,clr;
	output q;
	
	reg q;
	
	always@(posedge clk or negedge clr)
		begin
			if(!clr)
				q=0;
			else
				q=d;
		end
endmodule
module shifter_D(
        din,clock,clear,out);
        input din,clock,clear;
        output [3:0]out;
        	diff U1(.q(out[0]),.d(din),.clk(clock),.clr(clear));
        	diff U1(.q(out[1]),.d(0),.clk(clock),.clr(clear));
        	diff U1(.q(out[2]),.d(1),.clk(clock),.clr(clear));
        	diff U1(.q(out[3]),.d(2),.clk(clock),.clr(clear));
endmodule


    );
endmodule
