transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2020/Fall/cst-133/labs/lab-2 {C:/Users/mbkea/Documents/_OIT/2020/Fall/cst-133/labs/lab-2/mux2_1b.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2020/Fall/cst-133/labs/lab-2 {C:/Users/mbkea/Documents/_OIT/2020/Fall/cst-133/labs/lab-2/mux2_4b.v}

