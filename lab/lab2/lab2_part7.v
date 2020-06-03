//top_level file
module binary2bcd(SW,HEX1,HEX0);
input [5:0]SW;
output [0:6]HEX1,HEX0;
  
wire [3:0]ones,tens;
  
  b2b u3(SW,ones,tens);
  decoder u1(ones,HEX0);
  decoder u2(tens,HEX1);
  
endmodule