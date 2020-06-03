library verilog;
use verilog.vl_types.all;
entity part2 is
    port(
        ina             : in     vl_logic_vector(7 downto 0);
        inb             : in     vl_logic_vector(7 downto 0);
        mode            : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        aH              : out    vl_logic_vector(6 downto 0);
        aL              : out    vl_logic_vector(6 downto 0);
        bH              : out    vl_logic_vector(6 downto 0);
        bL              : out    vl_logic_vector(6 downto 0);
        sumH            : out    vl_logic_vector(6 downto 0);
        sumL            : out    vl_logic_vector(6 downto 0);
        overflow        : out    vl_logic;
        sum             : out    vl_logic_vector(7 downto 0)
    );
end part2;
