`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/20 15:01:12
// Design Name: 
// Module Name: salegoods
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


module salegoods(
    
    clk,//ʱ��
    reset_n,//��λ�ź�
	a,//5�ĸ���
	b,//10�ĸ���
	choice,//ѡ���źţ�Ϊ1ʱ40
	
	a_out,//�˻ص�5
	b_out,//�˻ص�10
	out_goods,//��������λ����
	
	out_in_coin,
	out_choice_coin,
	out_back_coin,
	out_money
	
	
	
    );
    input  clk;
    input  a,b;
    input  choice;
    input  reset_n;
    
    
    output reg a_out,b_out;
    output reg out_in_coin,out_choice_coin,out_back_coin;
    output reg out_goods;
    output reg out_money;//���һ��Ǯ��
    /*
    reg [4:0] a;
    reg [4:0] b;
    reg [1:0] choice;
    reg reset_n;
    
    reg[4:0] a_out,b_out;
    reg[1:0] out_goods;
    */
    reg[10:0] money=0;
    reg[10:0] tmoney=0;
    reg[1:0] state,nextstate;
    
   /* reg[1:0] out_in_coin=0;
    reg[1:0] out_choice_coin=0;
    reg[1:0] out_back_coin=0;*/
    
    parameter
    	IN_COIN = 2'b00,
    	CHOICE_COIN = 2'b01,
    	BACK_COIN = 2'b10;
    
    always @(posedge clk or negedge reset_n )
    	if(!reset_n)
    		state<=IN_COIN;
    	else
    		state<=nextstate;
    		
    always@(state)
    	begin    		
    		case(state)
    	
			    IN_COIN:
			    	begin
			    		
			    		a_out<=0;
			    		b_out<=0;
			    		
			    		out_goods<=1'b0;
			    		
			    		out_in_coin<=1'b1;       //���״̬���
			    		out_choice_coin<=1'b0;			    		
			    		out_back_coin<=1'b0;
			    		
			    		money=(a*5)+(b*10);	
			    		out_money=money;		  //��Ǯ�����
			    		nextstate=CHOICE_COIN;
			    	end
			    	
			    	
			    CHOICE_COIN:    if(choice == 1)
			                   
					    			begin
					    				tmoney = money-40;			    		
					    				out_in_coin<=1'b0;
					    		        out_choice_coin<=1'b1;
					    		        out_back_coin<=1'b0;
					    				nextstate = BACK_COIN;
					    			end
			    				 else
					    			begin
					    				tmoney = money-45;
					    						    				
					    				out_in_coin<=1'b0;
					    				out_choice_coin<=1'b1;
					    				out_back_coin<=1'b0;
					    				nextstate = BACK_COIN;	
					    			end
					    		
			    		
			    	
			    BACK_COIN:  
			    			if(tmoney>=0)
				    			begin
				    				out_goods <= 1'b1;				    								    				
				    				a_out <= money/10;
				    				b_out <= money%10;
				    				
				    				out_in_coin <=1'b0;
			    					out_choice_coin <=1'b0;
			    					out_back_coin <=1'b1;
				    				
				    				nextstate = IN_COIN;
				    			end
				    			
			    			else
			    			
				    			begin
				    				out_goods <= 1'b1;
				    				
				    				a_out <= a;
				    				b_out <= b;
				    				
				    				out_in_coin <=1'b0;
			    					out_choice_coin <=1'b0;
			    					out_back_coin <=1'b1;
				    				
				    				nextstate = IN_COIN;
				    			end
				    			
				    	default: state=2'b00;
			endcase
		end    			    
endmodule 

