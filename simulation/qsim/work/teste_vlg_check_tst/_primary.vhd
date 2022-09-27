library verilog;
use verilog.vl_types.all;
entity teste_vlg_check_tst is
    port(
        Imm             : in     vl_logic_vector(15 downto 0);
        Instruction     : in     vl_logic_vector(31 downto 0);
        pCount          : in     vl_logic_vector(15 downto 0);
        Ra_out          : in     vl_logic_vector(15 downto 0);
        Rb_out          : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end teste_vlg_check_tst;
