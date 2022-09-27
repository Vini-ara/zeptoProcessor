onerror {quit -f}
vlib work
vlog -work work Zepto.vo
vlog -work work Zepto.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Zepto_vlg_vec_tst
vcd file -direction Zepto.msim.vcd
vcd add -internal Zepto_vlg_vec_tst/*
vcd add -internal Zepto_vlg_vec_tst/i1/*
add wave /*
run -all
