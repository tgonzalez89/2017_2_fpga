transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/DSP-07/Documents/Github/2017_2_fpga/Proyecto1/parte2_maquina_estados {C:/Users/DSP-07/Documents/Github/2017_2_fpga/Proyecto1/parte2_maquina_estados/parte2_maquina_estados.v}

vlog -vlog01compat -work work +incdir+C:/Users/DSP-07/Documents/Github/2017_2_fpga/Proyecto1/parte2_maquina_estados {C:/Users/DSP-07/Documents/Github/2017_2_fpga/Proyecto1/parte2_maquina_estados/tb_maquina_estados.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_maquina_estados

add wave *
view structure
view signals
run -all
