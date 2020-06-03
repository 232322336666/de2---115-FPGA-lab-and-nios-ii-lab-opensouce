module resolving(
						input sys1,sys2,//0正 1负
						input [1:0]asmd,//00+,01-,10*,11/
						output [3:0]temp
					 );
assign temp[3:2]=asmd[1:0];
assign temp[1]=sys1;
assign temp[0]=sys2;
endmodule

module operator(
					input[15:0] IN1,IN2,//数据位
					input[1:0] asmd,//符号位
					input KEY0,
					output reg[31:0]OUT,
					output reg LEGG_OVERFLOW
					);
wire [3:0]state;
wire[14:0] sub_IN1;
wire[14:0] sub_IN2;
assign sub_IN1=~IN1[14:0]+1'b1;
assign sub_IN2=~IN2[14:0]+1'b1;
//************符号解算					
resolving a1 (IN1[15],IN2[15],asmd,state);					
wire cout[1:0];
wire[31:0] OUT1,OUT2,OUT3,OUT4,OUT5;
wire[14:0] remain;
//************将所有状况的运算运算出。

		assign OUT1[30:16]=15'b000000000000000;
		assign OUT2[30:15]=16'b0000000000000000;
		assign OUT3[30:15]=16'b0000000000000000;
		assign OUT4[30]=1'b0;
		assign OUT5[30:15]=4'h0000;
		myadd m1(IN1[14:0],IN2[14:0],OUT1[15],OUT1[14:0]);
		myadd	m2(IN1[14:0],sub_IN2,cout[0],OUT2[14:0]);
		myadd	m3(sub_IN1,IN2[14:0],cout[1],OUT3[14:0]);
		mymult m4(IN1[14:0],IN2[14:0],OUT4[29:0]);			
		mydivi m5(IN2[14:0],IN1[14:0],OUT5[14:0],remain);
		
	/*
	module mydivi (
	denom,
	numer,
	quotient,
	remain);
	*/
		always@(IN1,IN2,state)
		begin
		if(!KEY0) OUT=8'h00000000;
		else
		case(state)
//*************************************     加法
		4'b0000:begin OUT[31]<=1'b0;OUT[30:0]<=OUT1[30:0];LEGG_OVERFLOW=1'b0;end
		4'b0001:begin 
						if(IN1[14:0]>=IN2[14:0])
						begin 
							OUT[31]<=1'b0;
							OUT[30:0]<=OUT2[30:0];
						end
						else if(IN1[14:0]<IN2[14:0])
						begin 
							OUT[31]<=1'b1;
							OUT[30:0]<=OUT3[30:0];
						end
						LEGG_OVERFLOW=1'b0;
				  end
		4'b0011:begin OUT[31]<=1'b1;OUT[30:0]<=OUT1[30:0];LEGG_OVERFLOW=1'b0;end
		4'b0010:begin 
						if(IN1[14:0]>=IN2[14:0])
						begin 
							OUT[31]<=1'b1;
							OUT[30:0]<=OUT2[30:0];
						end
						else if(IN1[14:0]<IN2[14:0])
						begin 
							OUT[31]<=1'b0;
							OUT[30:0]<=OUT3[30:0];
						end
						LEGG_OVERFLOW=1'b0;
				  end
//*************************************		减法  
		4'b0100:	begin //+ - +
						if(IN1[14:0]>=IN2[14:0])
						begin 
							OUT[31]<=1'b0;
							OUT[30:0]<=OUT2[30:0];
						end
						else if(IN1[14:0]<IN2[14:0])
						begin 
							OUT[31]<=1'b1;
							OUT[30:0]<=OUT3[30:0];
						end
						LEGG_OVERFLOW=1'b0;
				  end
		4'b0101:	begin OUT[31]<=1'b0;OUT[30:0]<=OUT1[30:0];LEGG_OVERFLOW=1'b0;end//+ - -
		4'b0111:begin //- - -
						if(IN1[14:0]>=IN2[14:0])
						begin 
							OUT[31]<=1'b1;
							OUT[30:0]<=OUT2[30:0];
						end
						else if(IN1[14:0]<IN2[14:0])
						begin 
							OUT[31]<=1'b0;
							OUT[30:0]<=OUT3[30:0];
						end
						LEGG_OVERFLOW=1'b0;
				  end
		4'b0110:begin OUT[31]<=1'b1;OUT[30:0]<=OUT1[30:0];LEGG_OVERFLOW=1'b0;end//- - +
//*************************************     乘法
		4'b1000:begin OUT[31]<=1'b0;OUT[30:0]<=OUT4[30:0];LEGG_OVERFLOW=1'b0;end
		4'b1001:begin OUT[31]<=1'b1;OUT[30:0]<=OUT4[30:0];LEGG_OVERFLOW=1'b0;end		
		4'b1011:begin OUT[31]<=1'b0;OUT[30:0]<=OUT4[30:0];LEGG_OVERFLOW=1'b0;end		
		4'b1010:begin OUT[31]<=1'b1;OUT[30:0]<=OUT4[30:0];LEGG_OVERFLOW=1'b0;end		
//*************************************     除法		
		4'b1100:begin if(IN2==15'b000000000000000 )begin LEGG_OVERFLOW=1'b1;OUT=8'h00000000; end
							else begin OUT[31]<=1'b0;OUT[30:0]<=OUT5[30:0];LEGG_OVERFLOW=1'b0;end end
		4'b1101:begin if(IN2==15'b000000000000000 )begin LEGG_OVERFLOW=1'b1;OUT=8'h00000000; end
							else begin OUT[31]<=1'b1;OUT[30:0]<=OUT5[30:0];LEGG_OVERFLOW=1'b0;end end		
		4'b1111:begin if(IN2==15'b000000000000000 )begin LEGG_OVERFLOW=1'b1;OUT=8'h00000000; end
							else begin OUT[31]<=1'b0;OUT[30:0]<=OUT5[30:0];LEGG_OVERFLOW=1'b0;end end		
		4'b1110:begin if(IN2==15'b000000000000000 )begin LEGG_OVERFLOW=1'b1;OUT=8'h00000000; end
							else begin OUT[31]<=1'b1;OUT[30:0]<=OUT5[30:0];LEGG_OVERFLOW=1'b0;end end	
		 default:begin OUT <= 8'h00000000;LEGG_OVERFLOW=0; end //0
		endcase
		end
endmodule
