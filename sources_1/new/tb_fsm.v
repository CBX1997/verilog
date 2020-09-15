`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/13 15:08:19
// Design Name: 
// Module Name: tb_fsm
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


module tb_fsm;
reg clk,rst;
reg a;
wire z;
moorefsm fsm(.clk(clk),.rst(rst),.a(a),.z(z));
 initial
 	begin
 		clk=0;
 		rst=1;
 		#5 rst=0;
 		#3 rst=1;
 		
 		#20  a=1;
 		#100 a=1;
 		#100 a=0;
 		#100 a=0;
 		#100 a=1;
 		#100 a=0;
 		#100 a=0;
 		#100 a=0;
 		#100 a=0;
 		#100 a=1;
 		#100 a=0;
		#100 a=0;
		#100 a=1;
		#100 a=0;
		#100 a=1;
		#100 a=0;
    end
always #50 clk = ~clk; 		
endmodule
