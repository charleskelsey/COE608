library verilog;
use verilog.vl_types.all;
entity ALU32_vlg_check_tst is
    port(
        cout            : in     vl_logic;
        result          : in     vl_logic_vector(7 downto 0);
        zero            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end ALU32_vlg_check_tst;
