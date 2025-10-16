transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/linuxdev/FPGA_projects/switches_to_LEDs/rtl {/home/linuxdev/FPGA_projects/switches_to_LEDs/rtl/switches_to_LEDs.v}

