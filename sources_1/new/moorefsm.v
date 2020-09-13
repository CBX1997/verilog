`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/13 09:14:50
// Design Name: 
// Module Name: moorefsm
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


module moorefsm(clk,rst,a,z);
	input clk,rst;
	input a;
	output z;
	reg z;
	reg[3:0] currentstate,nextstate;
	parameter S0 = 4'b0000;
	parameter S1 = 4'b0001;
	parameter S2 = 4'b0010;
	parameter S3 = 4'b0011;
	parameter S4 = 4'b0100;
	parameter S5 = 4'b0101;
		always@(posedge clk or negedge rst)
			begin
				if(!rst)
					currentstate <= S0;
				else
					currentstate <= nextstate;
				end
		always@(currentstate or a or rst)
			begin 
				if(!rst)
					nextstate = S0;
				else
					case(currentstate)
						S0: nextstate = (a==1)?S1:S0;
						S1: nextstate = (a==0)?S2:S1;
						S2: nextstate = (a==0)?S3:S1;
						S3: nextstate = (a==1)?S4:S0;
						S4: nextstate = (a==0)?S5:S1;
						S5: nextstate = (a==0)?S3:S1;
					default: nextstate =S0;
					endcase
				end
		always@(rst or currentstate)
			begin
				if(!rst)
					z=0;
				else
					case(currentstate)
						S0: z =0;S1: z=0;S2: z=0;
						S3: z =0;S4: z=0;S5: z=1;
						default:z=0;
					endcase
				end	
endmodule
