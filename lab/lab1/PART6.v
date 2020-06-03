/**
  * @file 		PART6
  * @brief		DE2-115
  * @author		Fu Zhengnan
  * @date		    2019.11.11
  * @copyright    FU Zhengnan All rights reserved.
  */
  
/**
  * @brief  PART6整体函数.
  * @param  SW 为拨码开关，HEX0-7为8个数码管 为单个数码管.
  * @note   NULL.
  * @retval NULL.
  */
module part6(SW,HEX0_D,HEX1_D,HEX2_D,HEX3_D,HEX4_D,HEX5_D,HEX6_D,HEX7_D);
input[17:0]SW;
output[6:0]HEX0_D,HEX1_D,HEX2_D,HEX3_D,HEX4_D,HEX5_D,HEX6_D,HEX7_D;
wire[2:0]M1,M2,M3,M4,M0,M5,M6,M7;

	mux3bit8to1 N0(SW[ 17 : 15 ],SW[ 2: 0],SW[ 2: 0],SW[ 2: 0], SW[ 14 : 12 ],SW[ 11 : 9],SW[8: 6],SW[ 8: 6],SW[ 5: 3],   M0);
	mux3bit8to1 N1(SW[ 17 : 15 ],SW[ 2: 0],SW[ 2: 0],SW[ 14 : 12 ], SW[ 11 : 9],SW[ 8: 6],SW[8: 6],SW[ 5: 3],SW[ 2: 0], M1);
	mux3bit8to1 N2(SW[ 17 : 15 ],SW[ 2: 0],SW[ 14 : 12 ],  SW[11 : 9],SW[ 8: 6 ],SW[ 8: 6],SW[ 5 : 3],SW[ 2: 0 ],SW[ 2: 0],  M2);
	mux3bit8to1 N3(SW[ 17 : 15 ],SW[ 14 : 12 ],SW[ 11 : 9],  SW[8: 6],SW[ 8: 6],SW[ 5: 3],SW[ 2: 0],SW[ 2: 0],SW[ 2 : 0],   M3);
	mux3bit8to1 N4(SW[ 17 : 15 ],SW[ 11 : 9],SW[ 8: 6],SW[ 8: 6], SW[ 5: 3],SW[ 2 : 0],SW[ 2: 0],SW[ 2: 0],SW[ 14 : 12 ],   M4);
	mux3bit8to1 N5(SW[ 17 : 15 ],SW[ 8: 6],SW[ 8: 6],SW[ 5: 3], SW[ 2 : 0],SW[ 2: 0],SW[ 2: 0],SW[ 14 : 12],SW[ 11 : 9],   M5);
	mux3bit8to1 N6(SW[ 17 : 15 ],SW[ 8: 6],SW[ 5: 3],   SW[2: 0],SW[ 2: 0],SW[ 2: 0],SW[ 14 : 12 ],SW[ 11 : 9],SW[ 8: 6 ],   M6);
	mux3bit8to1 N7(SW[ 17 : 15 ],SW[ 5: 3],SW[ 2: 0],SW [ 2: 0], SW[ 2: 0],SW[ 14 : 12 ],SW[11 : 9],SW[ 8: 6],SW[ 8 : 6],   M7);
	decoder H0(M0,HEX0_D); 
	decoder H1(M1,HEX1_D); 
	decoder H2(M2,HEX2_D); 
	decoder H3(M3,HEX3_D); 
	decoder H4(M4,HEX4_D); 
	decoder H5(M5,HEX5_D); 
	decoder H6(M6,HEX6_D); 
	decoder H7(M7,HEX7_D); 
	endmodule
/**
  * @brief  3选8多路复用器.
  * @param  S为控制端，UVWXYYZOP为输入端.M为输出端。
  * @note   NULL.
  * @retval NULL.
  */
//由于PART5与PART4和PART3有关，这里我以自己的方法写一边PART3
module mux3bit8to1(S, U, V, W, X, Y,Z, O, P, M);
	input [2:0]S,U,V,W,X,Y,Z,O,P; 
	output [2:0]M; 
	wire[2:0] M0,M1,M2,M3,M4,M5,M6;
	assign M=M6;
	mux21 m1(S[0],U,V,M0);
	mux21 m2(S[0],W,X,M1);
	mux21 m3(S[0],Y,Z,M2);
	mux21 m4(S[0],P,O,M3);
	
	mux21 m5(S[1],M0,M1,M4);
	mux21 m6(S[1],M2,M3,M5);

	mux21 m7(S[2],M4,M5,M6);
endmodule 