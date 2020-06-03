library verilog;
use verilog.vl_types.all;
entity JSQ_FZN_top is
    port(
        CLOCK_50        : in     vl_logic;
        KEY             : in     vl_logic_vector(3 downto 0);
        SW              : in     vl_logic_vector(17 downto 0);
        LEDG            : out    vl_logic_vector(2 downto 0);
        LEDG3           : out    vl_logic;
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0);
        O1              : out    vl_logic_vector(15 downto 0);
        O2              : out    vl_logic_vector(15 downto 0);
        O3              : out    vl_logic_vector(31 downto 0)
    );
end JSQ_FZN_top;
