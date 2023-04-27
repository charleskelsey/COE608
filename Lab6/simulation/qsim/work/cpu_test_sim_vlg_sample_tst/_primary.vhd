library verilog;
use verilog.vl_types.all;
entity cpu_test_sim_vlg_sample_tst is
    port(
        cpuClk          : in     vl_logic;
        memClk          : in     vl_logic;
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end cpu_test_sim_vlg_sample_tst;
