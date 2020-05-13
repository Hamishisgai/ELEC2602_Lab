transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/sec_counter.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/counter_w_process.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/my_TFF.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/my_counter.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/DFF_w_clear.vhd}

vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/testbench_clock.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/sec_counter.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/my_TFF.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/my_counter.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/DFF_w_clear.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_5/Lab_5/vhdl/counter_w_process.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench_clock

add wave *
view structure
view signals
run 1 sec