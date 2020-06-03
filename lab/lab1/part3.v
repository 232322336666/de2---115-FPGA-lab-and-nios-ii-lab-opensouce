module part3(LEDR,LEDG,SW);
input [17:0]SW;
output [17:0]LEDR;
output [2:0]LEDG;
wire [2:0]S,U,V,W,X,Y,M0,M1,M2,M3;
assign S[2:0]=SW[17:15];
assign U[2:0]=SW[14:12];
assign V[2:0]=SW[11:9];
assign W[2:0]=SW[8:6];
assign X[2:0]=SW[5:3];
assign Y[2:0]=SW[2:0];
assign LEDR=SW;
assign LEDG=M3;
mux21 m1(S[0],U,V,M0);
mux21 m2(S[0],W,X,M1);
mux21 m3(S[1],M0,M1,M2);
mux21 m4(S[2],M2,Y,M3);
endmodule 

module mux21(j,k,l,o);
input[2:0] k;
input[2:0] l;
input j;
output [2:0]o;
assign o[0]=(~j&k[0])|(j&l[0]);
assign o[1]=(~j&k[1])|(j&l[1]);
assign o[2]=(~j&k[2])|(j&l[2]);
endmodule 