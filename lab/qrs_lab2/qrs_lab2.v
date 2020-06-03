module qrs_lab2(
input sys_clk,
input sys_rst_n,
input[7:0]SW,
output[7:0]led_green,
output[15:0]led_red
);
    system_qsys u0 (
        .clk_clk           (sys_clk),           //        clk.clk
        .reset_reset_n     (sys_rst_n),     //      reset.reset_n
        .new_number_export (SW), // new_number.export
        .green_leds_export (led_green), // green_leds.export
        .red_leds_export   (led_red)    //   red_leds.export
    );
	 
endmodule