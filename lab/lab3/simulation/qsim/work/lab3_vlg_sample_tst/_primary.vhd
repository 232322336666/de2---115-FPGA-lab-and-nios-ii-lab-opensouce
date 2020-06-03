library verilog;
use verilog.vl_types.all;
entity lab3_vlg_sample_tst is
    port(
        KEY0            : in     vl_logic;
        KEY1            : in     vl_logic;
        SW              : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab3_vlg_sample_tst;
