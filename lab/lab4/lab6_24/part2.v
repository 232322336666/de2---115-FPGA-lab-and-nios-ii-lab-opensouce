module part2(input wire [7:0]ina, inb,input wire  mode ,reset,input wire clock,
output wire [6:0]aH,aL,bH,bL,sumH,sumL,output reg  overflow,output wire  [7:0]sum );
//mode=1,sum=ina-inb;mode=0,sum=ina+inb
reg  [7:0] A,B;


//wire Cout,cout7;
wire cout7,Cout;
integer i;
//
/*
task full_adder;
input a,b,cin;
output cout ,sum;
cout=(a&b)|(b&cin)|(a&cin);
sum=a^b^cin;
endtask
*/ 
//
/*
task add8;
input [8:1] a,b;
input Cin;

output [8:1]sum;
//output Cout,cout7;
output  Cout1,Cout2,Cout3,Cout4,Cout5,Cout6,Cout7,Cout;

full_adder a1(a[1],b[1],Cin,sum[1],Cout1);
full_adder a2(a[2],b[2],Cout1,sum[2],Cout2);
full_adder a3(a[3],b[3],Cout2,sum[3],Cout3);
full_adder a4(a[4],b[4],Cout3,sum[4],Cout4);
full_adder a5(a[5],b[5],Cout4,sum[5],Cout5);
full_adder a6(a[6],b[6],Cout5,sum[6],Cout6);
full_adder a7(a[7],b[7],Cout6,sum[7],Cout7);
full_adder a8(a[8],b[8],Cout7,sum[8],Cout);
endtask 
*/
//
always @( posedge clock or negedge reset)
begin 
if(reset==0) begin A<=8'h00;B<=8'h00;end 
 
else begin
A<=ina;B<=inb;
if(mode==1'b1) begin 
for (i=0;i<8;i=i+1) B[i]=B[i]^mode;end 
     end
//add8(ina,inb,mode,sum ,cout7,Cout);
//overflow<=(cout7^Cout);
end
//wire  [7:0] temp;
full_adder8 add(A,B,mode,sum ,Cout,cout7);
always @(posedge clock)

begin 
 overflow=(cout7^Cout);end
decoder d1(aH,ina[7:4]);
decoder d2(aL,ina[3:0]);
decoder d3(bH,inb[7:4]);
decoder d4(bL,inb[3:0]);
decoder d5(sumH,sum[7:4]);
decoder d6(sumL,sum[3:0]);


endmodule 

