library verilog;
use verilog.vl_types.all;
entity part2_vlg_check_tst is
    port(
        aH              : in     vl_logic_vector(6 downto 0);
        aL              : in     vl_logic_vector(6 downto 0);
        bH              : in     vl_logic_vector(6 downto 0);
        bL              : in     vl_logic_vector(6 downto 0);
        overflow        : in     vl_logic;
        sum             : in     vl_logic_vector(7 downto 0);
        sumH            : in     vl_logic_vector(6 downto 0);
        sumL            : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end part2_vlg_check_tst;
