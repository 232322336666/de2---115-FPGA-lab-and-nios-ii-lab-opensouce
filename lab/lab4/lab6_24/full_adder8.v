module full_adder8(a,b,Cin,sum,Cout,cout7);
//纹波加法器
input [8:1] a,b;
input Cin;
output [8:1]sum;
output Cout,cout7;
wire Cout1,Cout2,Cout3,cout4,cout5,cout6,cout7;
full_adder f1(a[1],b[1],Cin,sum[1],Cout1);
full_adder f2(a[2],b[2],Cout1,sum[2],Cout2);
full_adder f3(a[3],b[3],Cout2,sum[3],Cout3);
full_adder f4(a[4],b[4],Cout3,sum[4],Cout4);
full_adder f5(a[5],b[5],Cout4,sum[5],Cout5);
full_adder f6(a[6],b[6],Cout5,sum[6],Cout6);
full_adder f7(a[7],b[7],Cout6,sum[7],Cout7);
full_adder f8(a[8],b[8],Cout7,sum[8],Cout);
endmodule