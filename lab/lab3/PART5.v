/**
  * @file 		PART5.v
  * @brief		lab3 PART5
  * @author		Fu Zhengnan
  * @date		 11.20
  * @copyright    Fu Zhengnan. All rights reserved.
  */
  
 /**
  * @brief  Drive digital tube.
  * @param  NULL.
  * @note   null.
  * @retval OUTput is the IOs of decoder.
 */

module decoder_TEST
				(input[3:0] C,
				output reg[6:0] HEX);	
	always @(C)
	begin
		case(C)
		4'b0000 : HEX = 7'b1000000;
		4'b0001 : HEX = 7'b1001111;
		4'b0010 : HEX = 7'b0100100;
		4'b0011 : HEX = 7'b0110000;
		4'b0100 : HEX = 7'b0011001;
		4'b0101 : HEX = 7'b0010010;
		4'b0110 : HEX = 7'b0000010;
		4'b0111 : HEX = 7'b1111000;
		4'b1000 : HEX = 7'b0000000;
		4'b1001 : HEX = 7'b0011000;
		4'b1010 : HEX = 7'b1111110;
		4'b1011 : HEX = 7'b1111101;
		4'b1100 : HEX = 7'b1111011;
		4'b1101 : HEX = 7'b1110111;
		4'b1110 : HEX = 7'b1101111;
		4'b1111 : HEX = 7'b1011111;	
		default: HEX = 7'b1111111;
		endcase
	end
endmodule

/**
  * @brief  D flip-flop.
  * @param  NULL.
  * @note 	NULL.
  * @retval The output is the D of D flip-flop.
  */

module D_trigger_test
				(input Clk,R,D,
				 output reg Q);
	always @(posedge Clk or negedge R)
	begin
		if(!R) Q<=1'b0;
		else Q<=D;
	end
endmodule
/**
  * @brief  Enter 16 signals and latch.
  * @param  NULL.
  * @note   NULL.
  * @retval output is the latch signals.
  */

module D_trigger_HEX
				(input Clk,R,
				 input [15:0] D,
				 output [15:0]Q);
	D_trigger_test m1 (Clk,R,D[0],Q[0]);
	D_trigger_test m2 (Clk,R,D[1],Q[1]);
	D_trigger_test m3 (Clk,R,D[2],Q[2]);
	D_trigger_test m4 (Clk,R,D[3],Q[3]);
	D_trigger_test m5 (Clk,R,D[4],Q[4]);
	D_trigger_test m6 (Clk,R,D[5],Q[5]);
	D_trigger_test m7 (Clk,R,D[6],Q[6]);
	D_trigger_test m8 (Clk,R,D[7],Q[7]);
	D_trigger_test m9 (Clk,R,D[8],Q[8]);
	D_trigger_test m10 (Clk,R,D[9],Q[9]);
	D_trigger_test m11 (Clk,R,D[10],Q[10]);
	D_trigger_test m12 (Clk,R,D[11],Q[11]);
	D_trigger_test m13 (Clk,R,D[12],Q[12]);
	D_trigger_test m14 (Clk,R,D[13],Q[13]);
	D_trigger_test m15 (Clk,R,D[14],Q[14]);	
	D_trigger_test m16 (Clk,R,D[15],Q[15]);	
endmodule

/**
  * @brief  PART5 的整体函数.
  * @param  NULL.
  * @note   NULL.
  * @retval 八个数码管.
  */

					 
module PART5
				(input KEY0,KEY1,
				 input [15:0]SW,
				output [6:0] HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0);
wire [15:0] TEMP1,TEMP2;
	D_trigger_HEX n1 (KEY1,KEY0,SW,TEMP1);
	D_trigger_HEX n2 (KEY1,KEY0,TEMP1,TEMP2);
		decoder_TEST m1 (TEMP1[3:0],HEX0);
		decoder_TEST m2 (TEMP1[7:4],HEX1);
		decoder_TEST m3 (TEMP1[11:8],HEX2);
		decoder_TEST m4 (TEMP1[15:12],HEX3);
		decoder_TEST m5 (TEMP2[3:0],HEX4);
		decoder_TEST m6 (TEMP2[7:4],HEX5);			
		decoder_TEST m7 (TEMP2[11:8],HEX6);		
		decoder_TEST m8 (TEMP2[15:12],HEX7);
endmodule
