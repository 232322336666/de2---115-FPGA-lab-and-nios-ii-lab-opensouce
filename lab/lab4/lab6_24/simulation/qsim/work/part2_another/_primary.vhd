library verilog;
use verilog.vl_types.all;
entity part2_another is
    port(
        SW              : in     vl_logic_vector(16 downto 0);
        KEY             : in     vl_logic_vector(1 downto 0);
        LEDR            : out    vl_logic_vector(7 downto 0);
        LEDG            : out    vl_logic_vector(8 downto 8);
        HEX7            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0)
    );
end part2_another;
