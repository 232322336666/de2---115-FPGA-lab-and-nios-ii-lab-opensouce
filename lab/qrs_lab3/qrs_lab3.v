module qrs_lab3(
input CLK,
input RST
);
system_qsys u0 (
    .clk_clk       (CLK),       //   clk.clk
    .reset_reset_n (RST)  // reset.reset_n
);
	 
endmodule