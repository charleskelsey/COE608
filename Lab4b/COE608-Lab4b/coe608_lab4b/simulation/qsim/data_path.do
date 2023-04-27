onerror {quit -f}
vlib work
vlog -work work data_path.vo
vlog -work work data_path.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.data_path_vlg_vec_tst
vcd file -direction data_path.msim.vcd
vcd add -internal data_path_vlg_vec_tst/*
vcd add -internal data_path_vlg_vec_tst/i1/*
add wave /*
run -all
