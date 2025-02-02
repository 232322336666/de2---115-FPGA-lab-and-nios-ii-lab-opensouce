module YMQ(i,HEX);
input wire [3:0] i;
output reg[6:0] HEX;
always @*
begin
case({i[3:0]})
4'd0:
{HEX[6:0]}=7'b1000000;
4'd1:
{HEX[6:0]}=7'b1111001;
4'd2:
{HEX[6:0]}=7'b0100100;
4'd3:
{HEX[6:0]}=7'b0110000;
4'd4:
{HEX[6:0]}=7'b0011001;
4'd5:
{HEX[6:0]}=7'b0010010;
4'd6:
{HEX[6:0]}=7'b0000010;
4'd7:
{HEX[6:0]}=7'b1111000;
4'd8:
{HEX[6:0]}=7'b0000000;
4'd9:
{HEX[6:0]}=7'b0010000;
4'd10:
{HEX[6:0]}=7'b0001000;
4'd11:
{HEX[6:0]}=7'b0000011;
4'd12:
{HEX[6:0]}=7'b0100111;
4'd13:
{HEX[6:0]}=7'b0100001;
4'd14:
{HEX[6:0]}=7'b0000110;
4'd15:
{HEX[6:0]}=7'b0001110;
default HEX[6:0]=7'b1111111;
endcase
end 
endmodule 