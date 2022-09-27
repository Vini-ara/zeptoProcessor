library verilog;
use verilog.vl_types.all;
entity teste is
    port(
        Imm             : out    vl_logic_vector(15 downto 0);
        Instruction     : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pCount          : out    vl_logic_vector(15 downto 0);
        Ra_out          : out    vl_logic_vector(15 downto 0);
        Rb_out          : out    vl_logic_vector(15 downto 0)
    );
end teste;
