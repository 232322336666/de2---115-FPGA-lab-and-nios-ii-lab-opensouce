module circuitB(input z,output [6:0]hex1);
assign hex1[6]=1'b1;
assign hex1[2:1]=2'b00;
assign hex1[5]=z;
assign hex1[4]=z;
assign hex1[3]=z;
assign hex1[0]=z;
endmodule 