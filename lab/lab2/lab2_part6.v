//2-digit bcd_adder
module part6(SW,HEX7,HEX6,HEX5,HEX4,HEX2,HEX1,HEX0);//
    input [15:0] SW;
    output [0:6] HEX7,HEX6,HEX5,HEX4,HEX2,HEX1,HEX0;//
    
    wire [3:0] A1,A0,B1,B0;
    wire [4:0] T1,T0;
    wire [3:0] S1,S0;
    wire S2;
    reg [3:0] Z1,Z0;
    reg c1,c2;
    
    assign T0=A0+B0;
    assign T1=A1+B1+c1;
    assign S0=T0-Z0;
    assign S1=T1-Z1;
    assign S2=c2;
    
    always @(T1,T0)
    begin
        if(T0>9)
            begin
                Z0=4'd10;
                c1=1'b1;
            end
        else
            begin
                Z0=4'd0;
                c1=1'b0;
            end
        if(T1>9)
            begin
                Z1=4'd10;
                c2=1'b1;
            end
        else
            begin
                Z1=4'd0;
                c2=1'b0;
            end
    end

    assign A1=SW[15:12];
    assign A0=SW[11:8];
    assign B1=SW[7:4];
    assign B0=SW[3:0];
    
    circuitB u3(S2,HEX2);
    decoder u4(S1,HEX1);
    decoder u5(S0,HEX0);
    decoder u6(A1,HEX7);
    decoder u7(A0,HEX6);
    decoder u8(B1,HEX5);
    decoder u9(B0,HEX4);
    
endmodule