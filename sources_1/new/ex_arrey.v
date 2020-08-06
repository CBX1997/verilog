`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: XAUT_IC
// Engineer: CBX1997
// 
// Create Date: 2020/08/06 09:39:01
// Design Name: 
// Module Name: ex_arrey
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: And gate of array call pattern
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module AND(andout,
							ina,
							inb)
							
	input ina,
				inb;
	output andout;
	
		assign andout=ina&inb;
endmodule
		
module ex_arrey(out,
									a,
									b
									);
input[15:0] a,b;
output[15:0] out;
wire[15:0] out;
		AND AND_ARREY[15:0](out,a,b);
endmodule
											

    );
endmodule
