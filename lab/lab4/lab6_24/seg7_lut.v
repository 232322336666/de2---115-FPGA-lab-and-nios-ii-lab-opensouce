//自己写的
module seg7_lut (idig,oseg);
input wire[3:0] oseg;
output reg  [6:0]idig;
always @(oseg)
begin 
case(oseg)
4'd0:idig=7'b1000000;
4'd1:idig=7'b1111001;
4'd2:idig=7'b0100100;
4'd3:idig=7'b0110000;
4'd4:idig=7'b0011001;
4'd5:idig=7'b0010010;
4'd6:idig=7'b0000010;
4'd7:idig=7'b1111000;
4'd8:idig=7'b0000000;
4'd9:idig=7'b0011000;
4'd10:idig=7'b0001000;
4'd11:idig=7'b0000011;
4'd12:idig=7'b1000110;
4'd13:idig=7'b0100001;
4'd14:idig=7'b0000110;
4'd15:idig=7'b0001110;
endcase
end
endmodule 



             
