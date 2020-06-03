module qrs_lab2_part345(
input CLK,
input RST,
input [7:0]SW,
input KEY1,
output [7:0]LEDRED,
output [15:0]LEDGREEN,
output [31:0]HEX
);


    system_qsys u0 (
        .clk_clk           (CLK),           //        clk.clk
        .reset_reset_n     (RST),     //      reset.reset_n
        .new_number_export (SW), // new_number.export
        .green_leds_export (LEDGREEN), // green_leds.export
        .red_leds_export   (LEDRED),   //   red_leds.export
        .pio_io_export     (KEY1),     //     pio_io.export
        .hex_export        (HEX)         //        hex.export
    );

endmodule