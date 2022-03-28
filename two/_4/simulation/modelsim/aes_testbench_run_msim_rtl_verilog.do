transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/kevyn/Desktop/aes_testbench {C:/Users/kevyn/Desktop/aes_testbench/timescale.v}
vlog -vlog01compat -work work +incdir+C:/Users/kevyn/Desktop/aes_testbench {C:/Users/kevyn/Desktop/aes_testbench/aes_sbox.v}
vlog -vlog01compat -work work +incdir+C:/Users/kevyn/Desktop/aes_testbench {C:/Users/kevyn/Desktop/aes_testbench/aes_rcon.v}
vlog -vlog01compat -work work +incdir+C:/Users/kevyn/Desktop/aes_testbench {C:/Users/kevyn/Desktop/aes_testbench/aes_key_expand_128.v}
vlog -vlog01compat -work work +incdir+C:/Users/kevyn/Desktop/aes_testbench {C:/Users/kevyn/Desktop/aes_testbench/aes_cipher_top.v}

