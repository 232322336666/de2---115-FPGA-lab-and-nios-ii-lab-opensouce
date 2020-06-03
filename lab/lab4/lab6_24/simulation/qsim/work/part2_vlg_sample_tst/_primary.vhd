library verilog;
use verilog.vl_types.all;
entity part2_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        ina             : in     vl_logic_vector(7 downto 0);
        inb             : in     vl_logic_vector(7 downto 0);
        mode            : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end part2_vlg_sample_tst;
