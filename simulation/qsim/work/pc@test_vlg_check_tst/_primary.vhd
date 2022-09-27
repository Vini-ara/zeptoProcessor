library verilog;
use verilog.vl_types.all;
entity pcTest_vlg_check_tst is
    port(
        Instruction     : in     vl_logic_vector(31 downto 0);
        pCount          : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end pcTest_vlg_check_tst;
