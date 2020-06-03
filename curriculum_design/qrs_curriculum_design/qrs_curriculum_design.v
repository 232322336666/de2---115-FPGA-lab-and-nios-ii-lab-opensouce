module qrs_curriculum_design(
input sys_clk,
input sys_rst_n,
inout I2C_SDAT,
input KEY0,
input KEY1,
output I2C_SCLK
);

reg	[23:0]	mI2C_DATA;
reg			mI2C_GO;

wire		mI2C_END;
wire		mI2C_ACK;

    system_qsy u0 (
        .clk_clk         (sys_clk),         //      clk.clk
        .reset_reset_n   (sys_rst_n),   //    reset.reset_n
        .iic_data_export (mI2C_DATA), // iic_data.export
        .iic_go_export   (mI2C_GO),   //   iic_go.export
        .key1_export     (KEY1),     //     key1.export
        .key0_export     (KEY0)      //     key0.export
    );

	I2C_Config (	//	Host Side
						.sys_clk(sys_clk),
						.sys_rst_n(sys_rst_n),
						//	I2C Side
						.I2C_SCLK(I2C_SCLK),
						.I2C_SDAT(I2C_SDAT),
						.I2C_DATA(mI2C_DATA),
						.GO(mI2C_GO)    	
	);
endmodule