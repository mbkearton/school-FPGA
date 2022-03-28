onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand /bcd_adder/a
add wave -noupdate -expand /bcd_adder/b
add wave -noupdate -radix ufixed -expand /bcd_adder/sum
add wave -noupdate -radix hexadecimal -expand /bcd_adder/x
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1600 ps}
view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction UpThenDown -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1600ps sim:/bcd_adder/a 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction UpThenDown -period 50ps -step 1 -repeat never -range 3 0 -starttime 0ps -endtime 800ps sim:/bcd_adder/b 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction UpThenDown -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 800ps sim:/bcd_adder/b 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction UpThenDown -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 800ps sim:/bcd_adder/b 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction UpThenDown -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1600ps sim:/bcd_adder/b 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1600ps sim:/bcd_adder/b 
WaveExpandAll -1
wave edit change_value -start 0ps -end 800ps -value 0000 Edit:/bcd_adder/b 
wave create -driver freeze -pattern counter -startvalue 0000 -endvalue 1111 -type Range -direction Up -period 50ps -step 1 -repeat forever -range 3 0 -starttime 0ps -endtime 1600ps sim:/bcd_adder/a 
WaveExpandAll -1
wave edit change_value -start 800ps -end 1600ps -value 1111 Edit:/bcd_adder/a 
WaveCollapseAll -1
wave clipboard restore
