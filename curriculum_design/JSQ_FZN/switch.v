/**
  * @brief  Switch one hex date from two.
  * @param  NULL.
  * @note   null.
  * @retval OUTput is the hex.
 */
module switch_hex
				(
				 input EN,
				 input [15:0] IN1,IN2,
				 output reg [15:0]Q
				 );
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

module switch_321
				(input[1:0] IN,
				  output reg Q1,Q2,Q3);
	always @(IN)
	begin
	if(IN==2'b00)
		begin Q1=1'b1;Q2=1'b0;Q3=1'b0;end
	else if(IN==2'b01)
		begin Q1=1'b0;Q2=1'b1;Q3=1'b0;end
	else if(IN==2'b10)
		begin Q1=1'b0;Q2=1'b0;Q3=1'b1;end
	else
		begin Q1=1'b0;Q2=1'b0;Q3=1'b0;end
	end		 		 
endmodule

module switch_323
				(input[1:0] IN,
				 input[15:0]DATA1,DATA2,
				 input[31:0]DATA3,
				 output reg[31:0] OUT);
	always @(IN,DATA1,DATA2)
	begin
	if(IN==2'b00)
		begin OUT[15:0]<=DATA1;OUT[31:16]<=4'h0000;end
	else if(IN==2'b01)
		begin OUT[15:0]<=DATA2;OUT[31:16]<=4'h0000;end
	else if(IN==2'b10)
		begin OUT<=DATA3; end
	else
		begin OUT<=8'h00000000;end
	end		 		 
endmodule
