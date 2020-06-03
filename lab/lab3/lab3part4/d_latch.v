module part4(clk,D,Q1,Q2,Q3);
input clk,D;
output Q1,Q2,Q3;
d_latch1 p1(clk,D,Q1);
d_latch2 p2(clk,D,Q2);
d_latch3 p3(clk,D,Q3);
endmodule 