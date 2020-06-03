module lab3_part3(input d,clk,output q,qn);
wire Qm,Qmn ;
part2 master(~clK,d,Qm,Qmn);
part2 slave(clk,Qm,q,qn);
endmodule 