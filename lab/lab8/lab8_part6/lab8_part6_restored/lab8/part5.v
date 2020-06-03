module part5(HEX,W,DATA,LEDG,LEDR,clk50M,reset);
input wire [7:0] DATA;
input wire W,reset;
input wire clk50M;
output wire [15:0] LEDR;
output wire LEDG;
output wire [55:0] HEX;


wire clk1hz;
reg [25:0] count;
reg [4:0] add;
wire [7:0] q;

assign LEDG=W;
assign LEDR[7:0]=DATA;

always @(posedge clk50M)
begin
if(count==50000000) count<=0;
else count<=count+1'b1;
end
assign clk1hz=count[25];



always @(posedge clk1hz, negedge reset)
begin 
if(~reset) add<=0;
else add<=add+1'b1;
end

ramlpm z(add,~clk1hz,DATA,W,q);

YMQ a(add[3:0],HEX[48:42]);
YMQ b({1'b0,1'b0,1'b0,add[4]},HEX[55:49]);
YMQ c(DATA[7:4],HEX[41:35]);
YMQ d(DATA[3:0],HEX[34:28]);
YMQ e(add[3:0],HEX[20:14]);
YMQ f({1'b0,1'b0,1'b0,add[4]},HEX[27:21]);
YMQ g(q[3:0],HEX[6:0]);
YMQ h(q[7:4],HEX[13:7]);

endmodule