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
module top1(top1a,top1b,top1s,top1c);//�޸İ����ģ�������ģ��top1
	input top1a,top1b;
	output top1s,top1c;
		defparam	U1.xor_delay=4;
		 			U1.and_delay=5;	
	//��ΪU1�İ����ʵ���жԲ���xor_delay�Ͳ���and_delayֵ���޸�
	halfadder U1(top1a,top1b,top1s,top1c);		 		
endmodule
module top2(top2p,top2q,top2ci,top2co,top2sum);
	input top2p,top2q,top2ci;
	output top2co,top2sum;
		defparam	U2.U1.xor_delay=6;
		 			U2.U2.and_delay=7;
	//��ΪU2��ȫ����ʵ���жԲ���or_delayֵ���޸�
	//����and_delayֵ���޸�
		U2.or_delay=5;
	//��ΪU2��ȫ����ʵ���жԲ���or_delayֵ���޸�
	fulladder U2(top2p,top2q,top2ci,topco,top2sum);
endmodule				 			
