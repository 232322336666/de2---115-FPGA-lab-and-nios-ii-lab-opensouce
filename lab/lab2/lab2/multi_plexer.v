module multi_plexer(input  a,b,sel,output m);
assign m=sel?a:b;
endmodule 