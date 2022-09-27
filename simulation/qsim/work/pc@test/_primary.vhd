library verilog;
use verilog.vl_types.all;
entity pcTest is
    port(
        Instruction     : out    vl_logic_vector(31 downto 0);
        pCount          : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end pcTest;
