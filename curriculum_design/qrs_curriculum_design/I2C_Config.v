module I2C_Config (	//	Host Side
						input sys_clk,
						input sys_rst_n,
						input[23:0]	I2C_DATA,
						input GO,
						//	I2C Side
						output I2C_SCLK,
						inout I2C_SDAT	
						);
						
reg	[15:0]	mI2C_CLK_DIV;
reg			mI2C_CTRL_CLK;


parameter	CLK_Freq	=	50000000;	//	50	MHz
parameter	I2C_Freq	=	20000;		//	20	KHz


always@(posedge sys_clk or negedge sys_rst_n)
begin
	if(!sys_rst_n)
	begin
		mI2C_CTRL_CLK	<=	0;
		mI2C_CLK_DIV	<=	0;
	end
	else
	begin
		if( mI2C_CLK_DIV	< (CLK_Freq/I2C_Freq) )
		mI2C_CLK_DIV	<=	mI2C_CLK_DIV+1;
		else
		begin
			mI2C_CLK_DIV	<=	0;
			mI2C_CTRL_CLK	<=	~mI2C_CTRL_CLK;
		end
	end
end

I2C_Controller 	u0	(	.CLOCK(mI2C_CTRL_CLK),		//	Controller Work Clock
						.I2C_SCLK(I2C_SCLK),		//	I2C CLOCK
 	 	 	 	 	 	.I2C_SDAT(I2C_SDAT),		//	I2C DATA
						.I2C_DATA(I2C_DATA),		//	DATA:[SLAVE_ADDR,SUB_ADDR,DATA]
						.GO(GO),      			//	GO transfor
						.RESET(sys_rst_n)
);						
endmodule