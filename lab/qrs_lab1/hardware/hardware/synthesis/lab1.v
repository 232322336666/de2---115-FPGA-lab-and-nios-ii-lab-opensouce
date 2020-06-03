module lab1(
			input sys_clk, //晶振时钟，50Mhz
			input sys_rst_n //按键复位，低电平有效
);
    system_qsys u0 (
        .clk_clk       (sys_clk),       //   clk.clk
        .reset_reset_n (sys_rst_n)  // reset.reset_n
    );
	 
endmodule