module d_latch1(clk,d,q);
input clk,d;
output q;
assign q=clk?d:q;
endmodule 

module d_latch2(clk,d,q);
input clk,d;
output q;
reg q;
always @(posedge clk)
begin 
q=d;
end 
endmodule 

module d_latch3(clk,d,q);
input clk,d;
output q;
reg q;
always @(negedge clk)
begin 
q=d;
end 
endmodule 