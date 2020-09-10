`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/09 16:38:31
// Design Name: 
// Module Name: re_defparam
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
module halfadder(a,b,s,c);
	input a,b;
	output c,s;
	parameter xor_delay = 2,and_delay = 3;
		assign #xor_dealy s =a^b;
		assign #and_dealy c =a&b;
	endmodule
	module fulladder(p,q,ci,co,sum);
		input p,q,ci;
		output co,sum;
		parameter or_delay =1;
			wire w1,w2,w3;
				halfadder U1(p,q,w1,w2);
				halfadder U2(ci,w1,sum,w3);
				or #or_delay U3(co,w2,w3);
endmodule
//名为U1的半加器实例中对参数 xor_delay 和参数and_delay值的修改
module top1(top1a,top2,);
	input top1a,top1b;
	output top1s,top1c;
		defparam U1.xor_delay = 4;
				 U1.and_delay = 5;
//
	halfadder U1(top1a,top1b,top1s,top1c);
endmodule
module top2(top2p,top2q,top2ci,top2co,top2sum);
	input top2p,top2q,toop2ci;
	output top2co,top2sum;
	defparam U2.U1.xor_delay = 6;
			 U2.U2.and_delay = 7;
//			 			
			U2.or_delay = 5;
//
fulladder U2(top2p,top2q,top2ci,top2co,top2sum);
endmodule			
