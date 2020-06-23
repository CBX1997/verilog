`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC 
// Engineer: CBX1997
// 
// Create Date: 2020/06/23 10:02:33
// Design Name: 
// Module Name: count4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  a 4bit count code
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module count4(out,reset,clk);
output[3:0] out;
input reset,clk;
reg[3:0] out;
always @(posedge clk)
            begin
            if(reset) out<=0;
            else out<=out+1;
            end
endmodule
