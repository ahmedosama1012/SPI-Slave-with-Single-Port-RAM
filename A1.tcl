create_project project_10 "C:/Users/DELL/Desktop/Digital course/Projects/Project_2/essam" -part xc7a35ticpg236-1L -force

add_files Master.v RAM_pr2.v SPI.v basys_master.xdc

synth_design -rtl -top Master > elab.log

write_schematic elaborated_schematic.pdf -format pdf -force 

launch_runs synth_1 > synth.log

wait_on_run synth_1
open_run synth_1

write_schematic synthesized_schematic.pdf -format pdf -force 

write_verilog -force switch_LEDs_netlist.v

launch_runs impl_1 -to_step write_bitstream 

wait_on_run impl_1
open_run impl_1

open_hw

connect_hw_server