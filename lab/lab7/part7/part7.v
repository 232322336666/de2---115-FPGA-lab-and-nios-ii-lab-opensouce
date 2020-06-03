module part7(hex7,hex6,hex5,hex4,hex3,
           hex2,hex1,hex0,clk,reset,KEY1,KEY2);
output reg [6:0] hex7,hex6,hex5,hex4,hex3,hex2,hex1,hex0;
input clk,reset,KEY1,KEY2;
reg [2:0] state;
reg  on_off;
reg [2:0]state_count;
reg temp;
integer count;
integer count_dif;


always @(posedge clk) 
begin//KEY1:clk=12500000 KEY2:clk=200000000
if(KEY1==0&&temp==0)begin state_count=state_count+3'b001 ;temp=1;end
else if(KEY2==0&&temp==0)begin state_count=state_count-3'b001 ;temp=1;end
if(KEY1!=0&&KEY2!=0) begin temp=0; end
begin
case(state_count)
		3'b000:count_dif=12500000;
		3'b001:count_dif=25000000;
		3'b010:count_dif=50000000;
		3'b011:count_dif=100000000;
		3'b100:count_dif=200000000;
		default: count_dif=50000000;
endcase
end
 
if(count<count_dif)
  count=count+1;
else 
begin 
	begin 
		if(reset==0)
			begin hex7<=7'b1111111;
					hex6<=7'b1111111;
					hex5<=7'b1111111;
					hex4<=7'b1111111;
					hex3<=7'b1111111;
					hex2<=7'b1111111;
					hex1<=7'b1111111;
					hex0<=7'b1111111;
					state<=3'b000;
					on_off=1'b0;
			end
		else 
			begin 
	     //solve the first problem
				if(on_off==0)//at the beginning,set the register
					begin  
					case(state)
					3'd0:begin hex0<=7'b0001001;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1;end //H
					3'd1:begin hex0<=7'b0000110;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1;end  //E
					3'd2:begin hex0<=7'b1000111;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1;end  //L
					3'd3:begin hex0<=7'b1000111;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1;end  //L
					3'd4:begin hex0<=7'b1000000;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1;end   //O
					3'd5:begin hex0<=7'b1111111;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1;end
					3'd6:begin hex0<=7'b1111111;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1;end
					3'd7:begin hex0<=7'b1111111;hex1<=hex0;hex2<=hex1;hex3<=hex2;
					hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;state=state+1; on_off=1'b1;end
					endcase 
					end
				else
					begin hex0<=hex7;hex1<=hex0;hex2<=hex1;hex3<=hex2;
		       hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;
					end
			end 
	end 
	count=0;
end
end
endmodule 