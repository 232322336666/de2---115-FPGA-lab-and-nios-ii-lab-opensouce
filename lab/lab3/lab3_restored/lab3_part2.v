//A gated D latch
module part2(Clk,S,Q,Qn);
input Clk,S;
output Q,Qn;

wire R_g,S_g,Qa,Qb;//synthesis keep

assign R=~S;
assign R_g=~(R&Clk);
assign S_g=~(S&Clk);
assign Qa=~(S_g&Qb);
assign Qb=~(R_g&Qa);

assign Q=Qa;
assign Qn=Qb;

endmodule