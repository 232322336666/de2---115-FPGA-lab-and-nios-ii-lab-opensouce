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
  * @brief  Drive two digital tubes.
  * @param  NULL.
  * @note   null.
  * @retval OUTput is the IOs of decoder.
 */
module decoder2
				(input[7:0] C,
				output[6:0] HEX2,HEX1);	
	decoder_TEST m1 (C[7:4],HEX2);
	decoder_TEST m2 (C[3:0],HEX1);
endmodule
/**
  * @brief  D flip-flop.
  * @param  NULL.
  * @note 	NULL.
  * @retval The output is the D of D flip-flop.
  */

module D_trigger_test
				(input Clk,R,D,EN,
				 output reg Q);
	always @(posedge Clk or negedge R)
	begin
		if(!R) Q<=1'b0;
		else if(EN)Q<=D;
			//  else Q<=1'b0;
	end
endmodule
/**
  * @brief  Enter 16 signals and latch.
  * @param  NULL.
  * @note   NULL.
  * @retval output is the latch signals.
  */

module D_trigger_HEX
				(input Clk,R,EN,
				 input [15:0] D,
				 output [15:0]Q);
	D_trigger_test m1 (Clk,R,D[0],EN,Q[0]);
	D_trigger_test m2 (Clk,R,D[1],EN,Q[1]);
	D_trigger_test m3 (Clk,R,D[2],EN,Q[2]);
	D_trigger_test m4 (Clk,R,D[3],EN,Q[3]);
	D_trigger_test m5 (Clk,R,D[4],EN,Q[4]);
	D_trigger_test m6 (Clk,R,D[5],EN,Q[5]);
	D_trigger_test m7 (Clk,R,D[6],EN,Q[6]);
	D_trigger_test m8 (Clk,R,D[7],EN,Q[7]);
	D_trigger_test m9 (Clk,R,D[8],EN,Q[8]);
	D_trigger_test m10 (Clk,R,D[9],EN,Q[9]);
	D_trigger_test m11 (Clk,R,D[10],EN,Q[10]);
	D_trigger_test m12 (Clk,R,D[11],EN,Q[11]);
	D_trigger_test m13 (Clk,R,D[12],EN,Q[12]);
	D_trigger_test m14 (Clk,R,D[13],EN,Q[13]);
	D_trigger_test m15 (Clk,R,D[14],EN,Q[14]);	
	D_trigger_test m16 (Clk,R,D[15],EN,Q[15]);	
endmodule
/**
  * @brief  Switch one hex date from two.
  * @param  NULL.
  * @note   null.
  * @retval OUTput is the hex.
 */
module switch_hex
				(input EN,
				 input [15:0] IN1,IN2,
				 output reg [15:0]Q);
	always @(EN)
	begin
	if(EN)
		begin Q=IN1;end
	else
		begin Q=IN2;end
	end		 		 
endmodule
/**
  * @brief  Switch one  date from two.
  * @param  NULL.
  * @note   null.
  * @retval OUTput is the one.
 */
module switch
				(input EN,
				 input IN,
				 output reg Q1,Q2);
	always @(EN)
	begin
	if(EN)
		begin Q1=IN;Q2=!IN;end
	else
		begin Q1=1'b0;Q2=1'b0; end
	end		 		 
endmodule
/**
  * @brief  PART5.
  * @param  NULL.
  * @note   null.
  * @retval NULL.
 */
module PART8 
		(input[17:0] IN,
		 input KEY0,KEY1,
		 output [6:0] HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0,
		 output cout);
		
		wire [7:0]OUT_A,OUT_B,OUT_C,OUT_D;
		wire[15:0]OUT1,OUT2,OUT,temp1,temp2,temp3;
		wire EN1,EN2;
		
		switch m8(IN[17],IN[16],EN1,EN2);
		D_trigger_HEX m1(KEY1,KEY0,EN1,IN[15:0],OUT1[15:0]);
		D_trigger_HEX m2(KEY1,KEY0,EN2,IN[15:0],OUT2[15:0]);
		
		switch_hex m3(IN[16],OUT1,OUT2,OUT);
		
		assign OUT_A = OUT1[15:8];
		assign OUT_B = OUT1[7:0];
		assign OUT_C = OUT2[15:8];
		assign OUT_D = OUT2[7:0];
		 
		mymult M1 (OUT_A,OUT_B,temp1);
		mymult M2 (OUT_C,OUT_D,temp2);
		
		myadd16 M3 (temp1,temp2,cout,temp3);
		
		decoder2 m4 (OUT[15:8],HEX7,HEX6);
		decoder2 m5 (OUT[7:0],HEX5,HEX4);
		decoder2 m6 (temp3[15:8],HEX3,HEX2);
		decoder2 m7 (temp3[7:0],HEX1,HEX0);
		
endmodule

