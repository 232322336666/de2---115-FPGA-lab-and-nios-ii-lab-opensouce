module PART9 
		(input[17:0] IN,
		 input KEY0,KEY1,
		 output [6:0] HEX7,HEX6,HEX5,HEX4,HEX3,HEX2,HEX1,HEX0,
		 output cout);
		
		wire [7:0]OUT_A,OUT_B,OUT_C,OUT_D;
		wire[15:0]OUT1,OUT2,OUT,temp1,temp2,temp3;
		wire EN1,EN2;
		
		switch m8(IN[17],IN[16],EN1,EN2);
		D_trigger_HEX m1(KEY1,KEY0,EN1,IN[15:0],OUT1[15:0]);
		D_trigger_HEX m2(KEY1,KEY0,EN2,IN[15:0],OUT2[15:0]);
		
		switch_hex m3(IN[16],OUT1,OUT2,OUT);
		
		assign OUT_A = OUT1[15:8];
		assign OUT_B = OUT1[7:0];
		assign OUT_C = OUT2[15:8];
		assign OUT_D = OUT2[7:0];
		 
	/*	mymult M1 (OUT_A,OUT_B,temp1);
		mymult M2 (OUT_C,OUT_D,temp2);
		
		myadd16 M3 (temp1,temp2,cout,temp3);*/
		myaltmultadd M1 (OUT_A,OUT_B,OUT_C,OUT_D,temp3);
		
		decoder2 m4 (OUT[15:8],HEX7,HEX6);
		decoder2 m5 (OUT[7:0],HEX5,HEX4);
		decoder2 m6 (temp3[15:8],HEX3,HEX2);
		decoder2 m7 (temp3[7:0],HEX1,HEX0);
		
endmodule