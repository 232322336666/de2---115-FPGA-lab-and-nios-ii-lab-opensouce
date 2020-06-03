library verilog;
use verilog.vl_types.all;
entity JSQ_FZN_top_vlg_check_tst is
    port(
        HEX0            : in     vl_logic_vector(6 downto 0);
        HEX1            : in     vl_logic_vector(6 downto 0);
        HEX2            : in     vl_logic_vector(6 downto 0);
        HEX3            : in     vl_logic_vector(6 downto 0);
        HEX4            : in     vl_logic_vector(6 downto 0);
        HEX5            : in     vl_logic_vector(6 downto 0);
        HEX6            : in     vl_logic_vector(6 downto 0);
        HEX7            : in     vl_logic_vector(6 downto 0);
        LEDG            : in     vl_logic_vector(2 downto 0);
        LEDG3           : in     vl_logic;
        O1              : in     vl_logic_vector(15 downto 0);
        O2              : in     vl_logic_vector(15 downto 0);
        O3              : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end JSQ_FZN_top_vlg_check_tst;
