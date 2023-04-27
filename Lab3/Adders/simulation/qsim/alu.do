onerror {quit -f}
vlib work
vlog -work work alu.vo
vlog -work work alu.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.alu_vlg_vec_tst
vcd file -direction alu.msim.vcd
vcd add -internal alu_vlg_vec_tst/*
vcd add -internal alu_vlg_vec_tst/i1/*
add wave /*
run -all
