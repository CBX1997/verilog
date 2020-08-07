`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/08/07 21:28:58
// Design Name: 
// Module Name: fulladder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: The 1-bit full adder is composed of 1-bit half adder
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
		c
);
input  a,
			 b;
			 
output c,
			 s;
			 
assign s=a^b;
assign c=a&b;
endmodule			 			
module fulladder(
			p,
			q,
			ci,
			co,
			sum		
    );
    
input  p,
			 q,
			 ci;
			 
output co,
			 sum;
			 
   wire w1,
		    w2,
		    w3;
   halfadder U1(p,q,w1,w2);
   halfadder U2(ci,w1,sum,w3);
   or U3(co,w2,w3)		 						    
endmodule
