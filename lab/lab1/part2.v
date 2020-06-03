module part2(LEDR,LEDG,SW);
input [17:0]SW;
output [17:0]LEDR;
output [7:0]LEDG;
wire s;
wire [7:0]X,Y,M;
assign S=SW[17];
assign X=SW[7:0];
assign Y=SW[15:8];
assign LEDR=SW;
assign LEDG=M;
mux2to1 m7(S,X[ 7 ],Y[ 7],M[ 7]);  

mux2to1 m6(S,X[ 6 ],Y[ 6],M[ 6]);  

mux2to1 m5(S,X[ 5 ],Y[ 5],M[ 5]);  

mux2to1 m4(S,X[ 4 ],Y[ 4],M[ 4]);  

mux2to1 m3(S,X[ 3 ],Y[ 3],M[ 3]);  

mux2to1 m2(S,X[ 2 ],Y[ 2],M[ 2]);  

mux2to1 m1(S,X[ 1 ],Y[ 1],M[ 1]);  

mux2to1 m0(S,X[ 0 ],Y[ 0],M[ 0]);  
endmodule

module mux2to1(s,x,y,m);
input s,x,y;
output m;
assign m=(~s&x)|(s&y);
endmodule 