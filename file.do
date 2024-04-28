vlib work
vlog SPI.v Master.v master_slave_tb.v RAM_pr2.v 
vsim -voptargs=+acc master_slave
add wave -position insertpoint  \
sim:/master_slave/clk \
sim:/master_slave/MISO \
sim:/master_slave/MOSI \
sim:/master_slave/rst_n \
sim:/master_slave/SS_n \
sim:/master_slave/M1/rx_data \
sim:/master_slave/M1/rx_valid \
sim:/master_slave/M1/tx_data \
sim:/master_slave/M1/tx_valid \
sim:/master_slave/M1/s1/count_1 \
sim:/master_slave/M1/s1/count_2 \
sim:/master_slave/M1/s1/count_3 \
sim:/master_slave/M1/s1/cs \
sim:/master_slave/M1/s1/ns \
sim:/master_slave/M1/s1/rd_address_first \
sim:/master_slave/M1/R1/wr_address \
sim:/master_slave/M1/R1/mem_1
run -all