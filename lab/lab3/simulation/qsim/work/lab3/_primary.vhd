library verilog;
use verilog.vl_types.all;
entity lab3 is
    port(
        HEX0            : out    vl_logic_vector(6 downto 0);
        KEY0            : in     vl_logic;
        KEY1            : in     vl_logic;
        SW              : in     vl_logic_vector(15 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0)
    );
end lab3;
