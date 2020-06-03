module test(input [3:0] v,output [6:0] hex1,hex0);
wire z;
wire   [2:0] m;
wire [3:0]temp;
compare comparator(v[3:0],z);
circuitA cirA(v[2:0],m[2:0]);
circuitB cirB(z,hex1[6:0]);

multi_plexer mux3(1'b0,v[3],z,temp[3]);


multi_plexer mux2(m[2],v[2],z,temp[2]);
multi_plexer mux1(m[1],v[1],z,temp[1]);
multi_plexer mux0(m[0],v[0],z,temp[0]);
decoder decode(temp[3:0],hex0[6:0]);
endmodule 

