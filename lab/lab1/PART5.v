/**
  * @file 		PART5
  * @brief		DE2-115
  * @author		Fu Zhengnan
  * @date		    2019.11.11
  * @copyright    FU Zhengnan All rights reserved.
  */
/**
  * @brief  3选5多路复用器.
  * @param  S为控制端，UVWXY为输入端.M为输出端。
  * @note   NULL.
  * @retval NULL.
  */
//由于PART5与PART4和PART3有关，这里我以自己的方法写一边PART3
module mux3bit5to1(S, U, V, W, X, Y, M);
	input [2:0]S,U,V,W,X,Y; 
	output [2:0]M; 
	wire[2:0] M0,M1,M2,M3;
	assign M=M3;
	mux21 m1(S[0],U,V,M0);
	mux21 m2(S[0],W,X,M1);
	mux21 m3(S[1],M0,M1,M2);
	mux21 m4(S[2],M2,Y,M3);
endmodule 

/**
  * @brief  part5主体函数.
  * @param  S为控制端，UVWXY为输入端.M为输出端。
  * @note   NULL.
  * @retval NULL.
  */
//由于PART5与PART4和PART3有关，这里我以自己的方法写一边PART3
module part5(SW,HEX0_D,HEX1_D,HEX2_D,HEX3_D,HEX4_D);
input[17:0]SW;
output[6:0]HEX0_D,HEX1_D,HEX2_D,HEX3_D,HEX4_D;
wire[2:0]M1,M2,M3,M4,M0;

	mux3bit5to1 N0(SW[17:15], SW[14:12], SW[11:9],  SW[8:6],   SW[5:3],   SW[2:0],   M0);
	mux3bit5to1 N1(SW[17:15], SW[11:9],  SW[8:6],   SW[5:3],   SW[2:0],   SW[14:12], M1);
	mux3bit5to1 N2(SW[17:15], SW[8:6],   SW[5:3],   SW[2:0],   SW[14:12], SW[11:9],  M2);
	mux3bit5to1 N3(SW[17:15], SW[5:3],   SW[2:0],   SW[14:12], SW[11:9],  SW[8:6],   M3);
	mux3bit5to1 N4(SW[17:15], SW[2:0],   SW[14:12], SW[11:9],  SW[8:6],   SW[5:3],   M4);

	decoder H0(M0,HEX0_D); 
	decoder H1(M1,HEX1_D); 
	decoder H2(M2,HEX2_D); 
	decoder H3(M3,HEX3_D); 
	decoder H4(M4,HEX4_D); 
endmodule
