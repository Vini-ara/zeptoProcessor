library verilog;
use verilog.vl_types.all;
entity Zepto is
    port(
        HEX0            : out    vl_logic_vector(6 downto 0);
        KEY             : in     vl_logic_vector(1 downto 1);
        CLOCK_50        : in     vl_logic;
        SW              : in     vl_logic_vector(3 downto 0);
        Instruction     : out    vl_logic_vector(31 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        HEX5            : out    vl_logic_vector(6 downto 0);
        HEX6            : out    vl_logic_vector(6 downto 0);
        HEX7            : out    vl_logic_vector(6 downto 0);
        pCount          : out    vl_logic_vector(15 downto 0);
        Ra_out          : out    vl_logic_vector(15 downto 0);
        Rb_out          : out    vl_logic_vector(15 downto 0)
    );
end Zepto;
