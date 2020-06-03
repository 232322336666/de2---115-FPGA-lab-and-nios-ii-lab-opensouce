module decoder(input [3:0] sw,output [6:0]hex0);
assign hex0[0]=( (~sw[3])&(~sw[2])&(~sw[1])&sw[0] )|( sw[3]&sw[1] )| ( sw[2]&(~sw[0]));
assign hex0[1]=( sw[3]&sw[1]) | ( sw[2]&sw[1]&(~sw[0])) | ( sw[2]&sw[0]&(~sw[1]));
assign hex0[2]=( sw[3]&sw[2]) | ( sw[1]&(~sw[2])&(~sw[0]));
assign hex0[3]=( sw[2]&sw[1]&sw[0]) |( sw[2]&(~sw[1])&(~sw[0])) |( sw[0]&(~sw[2])&(~sw[1]));
assign hex0[4]=( sw[2]&(~sw[1])) | sw[0];
assign hex0[5]=( (~sw[3])&(~sw[2])&sw[0]) |( (~sw[2]&sw[1])) |( sw[1]&sw[0]);
assign hex0[6]=( (~sw[3])&(~sw[2])&(~sw[1])) |( sw[2]&sw[1]&sw[0]);
endmodule 