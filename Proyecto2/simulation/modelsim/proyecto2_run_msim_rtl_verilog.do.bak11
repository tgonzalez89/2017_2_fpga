transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/proyecto2.v}
vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/fifo.v}
vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/pre_tx_module.v}
vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/shift_register.v}
vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/clk_div_mod.v}
vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/mux_sel.v}
vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/FSM_SPI.v}

vlog -vlog01compat -work work +incdir+C:/Users/mespinoz/Documents/Maestria\ ITCR/Prototipado\ FPGA/Proyecto2 {C:/Users/mespinoz/Documents/Maestria ITCR/Prototipado FPGA/Proyecto2/tb_FSM_SPI.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_FSM_SPI

add wave *
view structure
view signals
run -all
