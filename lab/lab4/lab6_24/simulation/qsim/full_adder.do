onerror {exit -code 1}
vlib work
vlog -work work full_adder.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.part2_another_vlg_vec_tst -voptargs="+acc"
vcd file -direction full_adder.msim.vcd
vcd add -internal part2_another_vlg_vec_tst/*
vcd add -internal part2_another_vlg_vec_tst/i1/*
run -all
quit -f
