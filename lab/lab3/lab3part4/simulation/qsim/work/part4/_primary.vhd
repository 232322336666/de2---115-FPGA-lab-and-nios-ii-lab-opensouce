library verilog;
use verilog.vl_types.all;
entity part4 is
    port(
        clk             : in     vl_logic;
        D               : in     vl_logic;
        Q1              : out    vl_logic;
        Q2              : out    vl_logic;
        Q3              : out    vl_logic
    );
end part4;
