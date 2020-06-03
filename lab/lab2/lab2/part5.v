//top_level file
module part5(SW,HEX7,HEX6,HEX5,HEX4,HEX2,HEX1,
  HEX0);
input [16:0]SW;
output [0:6]HEX7,HEX6,HEX5,HEX4,HEX2,HEX1,
              HEX0;
  
wire [3:0]s0,s1;
wire co0,co1;
  
  decoder ua1(SW[15:12],HEX7);
  decoder ua0(SW[11:8],HEX6);
  decoder ub1(SW[7:4],HEX5);
  decoder ub0(SW[3:0],HEX4);
  
  bcdAdder u0(SW[16],SW[11:8],SW[3:0],s0,co0);
  bcdAdder u1(co0,SW[15:12],SW[7:4],s1,co1);
  circuitB us2(co1,HEX2);
  decoder us1(s1,HEX1);
  decoder us0(s0,HEX0);
  
endmodule