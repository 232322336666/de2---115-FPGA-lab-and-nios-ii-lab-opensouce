
/**
  * @brief  calculate.
  * @param  NULL.
  * @note 	//KEY0 REST
				//KEY1 状态
				//KEY2 储存.
  * @retval 输入到此函数中，输出灯和结果表达式。
  */
module calculate(
					input[17:0] SW,
					input KEY0,KEY1,KEY2,
					output reg [2:0] LEDG,
					output LEDG3,
					output[31:0] DATA
						);
		reg[1:0] state;
		wire EN1,EN2,EN3;
		wire[15:0]OUT1,OUT2;
		wire[31:0]OUT;

//		state a(KEY0,KEY1,LEDG,state);
		always@(negedge KEY1,negedge KEY0) 
		begin
			if(!KEY0) state<=2'b00;
		else 
			if(!KEY1)
			begin
			case(state)
			2'b00:state<=2'b01;
			2'b01:state<=2'b10;
			2'b10:state<=2'b00;
			default:state<=2'b00;
			endcase
			end
		end
/*		if(!KEY1)
				begin	
					if(state >=2'b10)state <= 2'b00;
					else state <=state + 1'b1;
				end
		end
*/		
		always@(state) 
		begin
		case(state)
		2'b00:begin  LEDG[2:0]=3'b001;end
		2'b01:begin  LEDG[2:0]=3'b010;end
		2'b10:begin  LEDG[2:0]=3'b100;end
		endcase
		end

		switch_321 m1(state,EN1,EN2,EN3);
		register_HEX m2(KEY2,KEY0,EN1,SW[15:0],OUT1[15:0]);
		register_HEX m3(KEY2,KEY0,EN2,SW[15:0],OUT2[15:0]);
		operator m4(OUT1[15:0],OUT2[15:0],SW[17:16],KEY0,OUT,LEDG3);
		switch_323 m5(state,OUT1,OUT2,OUT,DATA);
endmodule