module d_latch3(clk,d,q);
input clk,d;
output q;
reg q;
always @(negedge clk)
begin 
q=d;
end 
endmodule 