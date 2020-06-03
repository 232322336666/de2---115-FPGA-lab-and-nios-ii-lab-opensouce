module part5(hex7,hex6,hex5,hex4,hex3,
           hex2,hex1,hex0,clk,reset);
output reg [6:0] hex7,hex6,hex5,hex4,hex3,hex2,hex1,hex0;
input clk,reset;
reg [2:0] state;
reg  on_off;

always @(posedge clk ) 
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
		begin  case(state)
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
		       hex4<=hex3;hex5<=hex4;hex6<=hex5;hex7<=hex6;end
	end 
end 
endmodule 