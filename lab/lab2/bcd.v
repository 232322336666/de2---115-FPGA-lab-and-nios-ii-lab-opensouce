//6-bit binary to 2-digit BCD 
module b2b(a,ones,tens);
input [5:0]a;
output [3:0]ones,tens;
  
wire [3:0]c1,c2,c3;
wire [3:0]d1,d2,d3;
  
assign d1={1'b0,a[5:3]};
assign d2={c1[2:0],a[2]};
assign d3={c2[2:0],a[1]};
  add3 m1(d1,c1);
  add3 m2(d2,c2);
  add3 m3(d3,c3);
assign ones={c3[2:0],a[0]};
assign tens={1'b0,c1[3],c2[3],c3[3]};
  
endmodule 

//add3.v
module add3(in,out);
input [3:0] in;
output [3:0] out;
reg [3:0] out;

always @ (in)
case (in)
4'b0000: out <= 4'b0000;
4'b0001: out <= 4'b0001;
4'b0010: out <= 4'b0010;
4'b0011: out <= 4'b0011;
4'b0100: out <= 4'b0100;
4'b0101: out <= 4'b1000;
4'b0110: out <= 4'b1001;
4'b0111: out <= 4'b1010;
4'b1000: out <= 4'b1011;
4'b1001: out <= 4'b1100;
default: out <=4'b0000;
endcase
endmodule