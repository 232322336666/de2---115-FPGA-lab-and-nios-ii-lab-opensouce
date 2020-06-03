//part2 top_level file
module top_level(SW,LEDR0);
input [1:0]SW; //clk & S
output LEDR0;  //q
   
part2(SW[1],SW[0],LEDR0);
  
endmodule