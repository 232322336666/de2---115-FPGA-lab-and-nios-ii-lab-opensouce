module part2_another        (SW , //加数A和B
                    KEY,  //脉冲和复位
                    LEDR, //和
                    LEDG, //溢出
                    HEX7, //16进制显示加数A
                    HEX6,
                    HEX5, //16进制显示加数B
                    HEX4,
                    HEX1, //16进制显示和
                    HEX0
                    );
                    
  input wire[16:0]SW;
 // input wire mode;
  input [1:0]KEY;
  output [7:0]LEDR;
  output [8:8]LEDG;
  output wire [6:0]HEX7,HEX6,HEX5,HEX4,HEX1,HEX0;
  wire [7:0]sum;
  
  addersubtractor u0(.A(SW[15:8]),
           .B(SW[7:0]),
           .clk(KEY[1]),
           .rst_n(KEY[0]),
           .S(sum),
           .overflow(LEDG),
           .addsub(SW[16])
           );
  
  assign LEDR=sum;
            
  seg7_lut u1(.idig(HEX7),
              .oseg(SW[15:12])
              );
  seg7_lut u2(.idig(HEX6),
              .oseg(SW[11:8])
              );
  seg7_lut u3(.idig(HEX5),
              .oseg(SW[7:4])
              );
  seg7_lut u4(.idig(HEX4),
              .oseg(SW[3:0])
              );
  seg7_lut u5(.idig(HEX1),
              .oseg(sum[7:4])
              );
  seg7_lut u6(.idig(HEX0),
              .oseg(sum[3:0])
              );
              
endmodule 

