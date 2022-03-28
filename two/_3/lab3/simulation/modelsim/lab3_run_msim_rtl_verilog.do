transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/mux_2_digit_display.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/clk_div_DISPLAY.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/clk_div_COUNTER.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/bcd_decoder_2_digits.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/bcd_decoder_1_digit.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/bcd_99_counter.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/DE10_LITE_Golden_Top.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/controller_clk_pov.v}
vlog -vlog01compat -work work +incdir+C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3 {C:/Users/mbkea/Documents/_OIT/2021/Winter/cst-231/labs/_3/lab3/fake_SSEG_4.v}

