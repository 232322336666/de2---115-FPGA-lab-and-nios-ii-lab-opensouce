/**
  * @brief  D flip-flop.
  * @param  NULL.
  * @note 	NULL.
  * @retval The output is the D of D flip-flop.
  */

module D_trigger
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

module register_HEX
				(input Clk,R,EN,
				 input [15:0] D,
				 output [15:0]Q);
	D_trigger m1 (Clk,R,D[0],EN,Q[0]);
	D_trigger m2 (Clk,R,D[1],EN,Q[1]);
	D_trigger m3 (Clk,R,D[2],EN,Q[2]);
	D_trigger m4 (Clk,R,D[3],EN,Q[3]);
	D_trigger m5 (Clk,R,D[4],EN,Q[4]);
	D_trigger m6 (Clk,R,D[5],EN,Q[5]);
	D_trigger m7 (Clk,R,D[6],EN,Q[6]);
	D_trigger m8 (Clk,R,D[7],EN,Q[7]);
	D_trigger m9 (Clk,R,D[8],EN,Q[8]);
	D_trigger m10 (Clk,R,D[9],EN,Q[9]);
	D_trigger m11 (Clk,R,D[10],EN,Q[10]);
	D_trigger m12 (Clk,R,D[11],EN,Q[11]);
	D_trigger m13 (Clk,R,D[12],EN,Q[12]);
	D_trigger m14 (Clk,R,D[13],EN,Q[13]);
	D_trigger m15 (Clk,R,D[14],EN,Q[14]);	
	D_trigger m16 (Clk,R,D[15],EN,Q[15]);	
endmodule
