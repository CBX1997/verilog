`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/07/29 09:57:59
// Design Name: 
// Module Name: dff1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Asynchronous reset D trigger formed by assign and deassign
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff1(
				d,
				clr,
				clk,
				q
            );
  input d,
      clr,
      clk;
	output q;
	reg q;
	always@(clr)
		begin
			if(!clr)
			  assign q=0;//ʱ���ص���ʱ��d�ı仯��q��Ч
			else
			  deassign q;//�����Ĵ���q��״̬,ʹ��
		end
	always@(negedge clk)
	q=d;
endmodule
