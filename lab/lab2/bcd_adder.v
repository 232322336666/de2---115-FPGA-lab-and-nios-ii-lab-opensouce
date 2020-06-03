/*...The ADDER CIRUIT....*/
//A Full Adder Circuit
module fulladder(C,A,B,S,O);
input C,A,B;
output S,O;
   
//C = CarryIn, A & B = Inputs, S = Sum, O = Carryout
assign S = C^(A^B);
assign O = (~(A^B)&B)|((A^B)&C);
endmodule

//4 Bit, Full Adder Circuit
module fulladder_4bit(C,A,B,S,O);
input C;
input [3:0]A,B;
output O;
output [3:0]S;
wire [3:0]cwire;
   
//C=CarryIn, A&B = Inputs, S = Sumb, O = CarryOut, CWIRE= Carry wire between adders
    fulladder N0(C,A[0],B[0],S[0],cwire[0]);
    fulladder N1(cwire[0],A[1],B[1],S[1],cwire[1]);
    fulladder N2(cwire[1],A[2],B[2],S[2],cwire[2]);
    fulladder N3(cwire[2],A[3],B[3],S[3],cwire[3]);

//BCD Carry
assign O = cwire[3]|(S[3]&S[2])|(S[3]&S[1]);
endmodule

//BCD Adder: Sum Finder
module bcdAdder(C,A,B,S,O);
input C;
input [3:0]A,B;
output [3:0]S;
output O;
wire [3:0]cwire;
wire [3:0]preSum;
   
    fulladder_4bit MidAd1(C,A,B,preSum,O);
   
assign cwire[0] =0;
assign cwire[1] = O;
assign cwire[2] = O;
assign cwire[3] =0;


    fulladder_4bit MidAd2(0,cwire,preSum,S);
   
endmodule

