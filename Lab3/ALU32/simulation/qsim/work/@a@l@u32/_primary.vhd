library verilog;
use verilog.vl_types.all;
entity ALU32 is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        op              : in     vl_logic_vector(2 downto 0);
        result          : inout  vl_logic_vector(7 downto 0);
        cout            : out    vl_logic;
        zero            : out    vl_logic
    );
end ALU32;
