module JSQ_FZN_top
	(
		//////// CLOCK //////////
		CLOCK_50,
		
		//////// KEY //////////
		KEY,
		

		//////// SW //////////
		SW,

		//////// SEG7 //////////
		LEDG,
		LEDG3,
		HEX0,
		HEX1,
		HEX2,
		HEX3,
		HEX4,
		HEX5,
		HEX6,
		HEX7,
	);

input		          		CLOCK_50;
//////////// KEY //////////
input		     [3:0]		KEY;

//////////// SW //////////
input		     [17:0]		SW;
output		  [2:0]		LEDG;
output                  LEDG3;
//////////// SEG7 /////////
output		  [6:0]		HEX0;
output		  [6:0]		HEX1;
output		  [6:0]		HEX2;
output		  [6:0]		HEX3;
output		  [6:0]		HEX4;
output		  [6:0]		HEX5;
output		  [6:0]		HEX6;
output		  [6:0]		HEX7;

wire    [31:0] hex_data;   //seg data input


calculate u1(
			.SW(SW),
			.KEY0(KEY[0]),
			.KEY1(KEY[1]),
			.KEY2(KEY[2]),
			.LEDG(LEDG),
			.LEDG3(LEDG3),
			.DATA(hex_data)
);
//the key code is display on HEX0 ~ HEX3
//the custom code is display on HEX4 ~ HEX7
SEG_HEX u2( //display the HEX on HEX0                               
			.iDIG(hex_data[3:0]),         
			.oHEX_D(HEX0)
		  );  
SEG_HEX u3( //display the HEX on HEX1                                
           .iDIG(hex_data[7:4]),
           .oHEX_D(HEX1)
           );
SEG_HEX u4(//display the HEX on HEX2                                
           .iDIG(hex_data[11:8]),
           .oHEX_D(HEX2)
           );
SEG_HEX u5(//display the HEX on HEX3                                 
           .iDIG(hex_data[15:12]),
           .oHEX_D(HEX3)
           );
SEG_HEX u6(//display the HEX on HEX4                                 
           .iDIG(hex_data[19:16]),
           .oHEX_D(HEX4)
           );
SEG_HEX u7(//display the HEX on HEX5                                 
           .iDIG(hex_data[23:20]) , 
           .oHEX_D(HEX5)
           );
SEG_HEX u8(//display the HEX on HEX6                                 
           .iDIG(hex_data[27:24]) ,
           .oHEX_D(HEX6)
           );
SEG_HEX u9(//display the HEX on HEX7                                 
           .iDIG(hex_data[31:28]) ,
           .oHEX_D(HEX7)
           );           

endmodule

