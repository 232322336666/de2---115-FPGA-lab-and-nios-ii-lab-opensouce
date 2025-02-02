module full_adder(a,b,Cin,sum,Cout);
input a,b;
input Cin;
output sum;
output Cout;
wire t1,t2,t3;
wire s1;

xor (s1,a,b);
xor (sum,s1,Cin);
and (t3,a,b);
and (t2,b,Cin);
and (t1,a,Cin);
or (Cout,t1,t2,t3);

endmodule