`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/09/10 16:02:54
// Design Name: 
// Module Name: decoder2_4
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


module decoder2_4(
	in0,in1,en,out0,out1,out2,out3);
	output out0,out1,out2,out3;
	input in0,in1,en;
		wire 	wire1,wire2;
		not 	U1(wire1,in0),
				U2(wire2,in1);
		nand    U3(out0,en,wire1,wire2),
				U4(out1,en,wire1,in1),
				U5(out2,en,in0,wire2),
				U6(out3,en,in0,in1);
endmodule

