transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_4/Lab_4_part_1-3/vhdl/part3.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_4/Lab_4_part_1-3/vhdl/part2.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_4/Lab_4_part_1-3/vhdl/part1.vhd}

vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_4/Lab_4_part_1-3/vhdl/testbench_part3.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_4/Lab_4_part_1-3/vhdl/part1.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_4/Lab_4_part_1-3/vhdl/part2.vhd}
vcom -93 -work work {C:/Users/atlas/Desktop/ELEC2602/Lab/Lab_4/Lab_4_part_1-3/vhdl/part3.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  testbench_part3

add wave *
view structure
view signals
run 800 ns
