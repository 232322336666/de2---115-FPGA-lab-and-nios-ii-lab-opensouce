module PART6(SW,CLOCK_50,KEY,HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0);
input  [8:0]SW;
input  CLOCK_50;
input [0:0]KEY;
output [6:0]  HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0;


wire clk1hz;
reg [25:0] count;
reg [4:0] add;
wire [7:0] q;

always @(posedge CLOCK_50)
begin
if(count==50000000) count<=0;
else count<=count+1'b1;
end
assign clk1hz=count[25];



always @(posedge clk1hz, negedge KEY[0])
begin 
if(~KEY[0]) add<=0;
else add<=add+1'b1;
end

ramlpm z(add,~clk1hz,SW[8:1],SW[0],q);

decoder_TEST a(add[3:0],HEX0);
decoder_TEST b({1'b0,1'b0,1'b0,add[4]},HEX1);
decoder_TEST c(SW[8:5],HEX2);
decoder_TEST d(SW[4:1],HEX3);
decoder_TEST e(add[3:0],HEX4);
decoder_TEST f({1'b0,1'b0,1'b0,add[4]},HEX5);
decoder_TEST g(q[3:0],HEX6);
decoder_TEST h(q[7:4],HEX7);

endmodule
