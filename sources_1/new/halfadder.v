`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/08/09 23:42:26
// Design Name: 
// Module Name: halfadder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Example of using defparam statement to modify parameter value
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module halfadder(
		a,
		b,
		s,
		c,
    );
	input a,b;
	
	output c,s;
	parameter xor_delay=2,and_delay=3;
		assign #xor_delay s=a^b;
		assign #and_delay c=a&b;
endmodule
module fulladder(p,q,ci,co,sum);
	input p,q,ci;
	output co,sum;
	parameter or_delay=1;
	 wire w1,w2,w3;
	 	halfadder  U1(p,q,w1,w2);
	 	halfadder  U2(ci,w1,sum,w3);
	 	or#or_delay U3(co,w2,w3);
endmodule
	
endmodule
