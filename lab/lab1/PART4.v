/**
  * @file 		PART4
  * @brief		DE2-115
  * @author		Fu Zhengnan
  * @date		    2019.11.10
  * @copyright    FU Zhengnan All rights reserved.
  */
  
/**
  * @brief  PART4的译码器函数.
  * @param  C为输入，HEX 为数码管引脚.
  * @note   NULL.
  * @retval NULL.
  */
module decoder
				(input[3:0] C,
				output reg[6:0] HEX);	
	always @(C)
	begin
		case(C)
		4'b0000 : HEX = 7'b0001001;
		4'b0001 : HEX = 7'b0000110;
		4'b0010 : HEX = 7'b1000111;
		4'b0011 : HEX = 7'b1000000;
		4'b0100 : HEX = 7'b1111111;
		4'b0101 : HEX = 7'b1111111;
		4'b0110 : HEX = 7'b1111111;
		4'b0111 : HEX = 7'b1111111;
		default: HEX = 7'b1111111;
		endcase
	end
endmodule