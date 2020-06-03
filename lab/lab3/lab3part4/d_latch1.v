module d_latch1(clk,d,q);
input clk,d;
output q;
assign q=clk?d:q;
endmodule 