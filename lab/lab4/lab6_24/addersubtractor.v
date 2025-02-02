

//Top-level module
module addersubtractor(A,
                       B,
                       clk,
                       rst_n,
                       addsub,  //0=+,1=-;
                       S,
                       overflow
                       );
  parameter n=8;                     
  input wire[n-1:0]A,B;
  input clk,rst_n,addsub;
  output  wire [n-1:0]S;
  output overflow;
  
  reg addsub_r,overflow;
  reg [n-1:0]Areg,Breg,Sreg;
  wire [n-1:0]G, H,M;
  wire cout,over_flow;
  
  //Define combinational logic circuit
  assign H=Breg^{n{addsub_r}},G=Areg;
  addern u0(addsub_r,G,H,M,cout);
  defparam u0.n=n;
  assign over_flow=~(cout^M[n-1]);
  assign S=Sreg;
  
  //Define flip-flops and registers
  always @(posedge clk or negedge rst_n)
  if(!rst_n)
  begin 
    Areg<=0;
    Breg<=0;
    Sreg<=0;
    overflow<=0;
    addsub_r<=0;
  end
  else
  begin
    Areg<=A;
    Breg<=B;
    Sreg<=M;
    overflow<=over_flow;
    addsub_r<=addsub;
  end
endmodule