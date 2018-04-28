SetActiveLib -work
comp -include "$DSN\src\cpu_lib.vhd" 
comp -include "$DSN\src\cpu.vhd" 
comp -include "$DSN\src\TestBench\cpu_TB.vhd" 
asim TESTBENCH_FOR_cpu 
wave 
wave -noreg clock
wave -noreg reset
wave -noreg ready
wave -noreg addr
wave -noreg rw
wave -noreg vma
wave -noreg data
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\cpu_TB_tim_cfg.vhd" 
# asim TIMING_FOR_cpu 
