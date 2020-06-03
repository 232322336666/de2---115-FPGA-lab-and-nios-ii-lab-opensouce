module decoder_TEST
				(input[3:0] C,
				output reg[6:0] HEX);	
	always @(C)
	begin
		case(C)
		4'b0000 : HEX = 7'b1000000;
		4'b0001 : HEX = 7'b1001111;
		4'b0010 : HEX = 7'b0100100;
		4'b0011 : HEX = 7'b0110000;
		4'b0100 : HEX = 7'b0011001;
		4'b0101 : HEX = 7'b0010010;
		4'b0110 : HEX = 7'b0000010;
		4'b0111 : HEX = 7'b1111000;
		4'b1000 : HEX = 7'b0000000;
		4'b1001 : HEX = 7'b0011000;
		4'b1010 : HEX = 7'b1111110;
		4'b1011 : HEX = 7'b1111101;
		4'b1100 : HEX = 7'b1111011;
		4'b1101 : HEX = 7'b1110111;
		4'b1110 : HEX = 7'b1101111;
		4'b1111 : HEX = 7'b1011111;	
		default: HEX = 7'b1111111;
		endcase
	end
endmodule

module part7
			(
				input CLOCK_50,
				input [0:0]KEY,
				input[15:0] SRAM_DQ,
				output SRAM_OE_N,SRAM_WE_N,SRAM_CE_N,SRAM_LB_N,SRAM_UB_N,
				output[19:0] SRAM_ADDR,
				output[6:0] HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0
			);
wire clk1hz;
reg [25:0] count;
reg [3:0] add;


assign SRAM_OE_N=1'b0;
assign SRAM_WE_N=1'b1;
assign SRAM_CE_N=1'b0;
assign SRAM_LB_N=1'b0;
assign SRAM_UB_N=1'b0;

//assign SRAM_ADDR[15:0]=SW[15:0];
assign SRAM_ADDR[19:4]=16'b000000000000000;

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
assign SRAM_ADDR[3:0]=add;

decoder_TEST a(SRAM_DQ[15:12],HEX7);
decoder_TEST b(SRAM_DQ[11:8],HEX6);
decoder_TEST c(SRAM_DQ[7:4],HEX5);
decoder_TEST d(SRAM_DQ[3:0],HEX4);
decoder_TEST e(SRAM_ADDR[15:12],HEX3);
decoder_TEST f(SRAM_ADDR[11:8],HEX2);
decoder_TEST g(SRAM_ADDR[7:4],HEX1);
decoder_TEST h(SRAM_ADDR[3:0],HEX0);

endmodule			
			