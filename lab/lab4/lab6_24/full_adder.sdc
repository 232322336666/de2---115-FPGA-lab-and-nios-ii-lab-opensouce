## Generated SDC file "full_adder.sdc"

## Copyright (C) 1991-2013 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

## DATE    "Wed Nov 27 14:29:33 2019"

##
## DEVICE  "EP4CE115F29C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {KEY[1]} -period 20.000 -waveform { 0.000 10.000 } [get_ports {KEY[1]}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {KEY[1]}] -rise_to [get_clocks {KEY[1]}] -setup 1.000  
set_clock_uncertainty -rise_from [get_clocks {KEY[1]}] -fall_to [get_clocks {KEY[1]}] -setup 1.000  
set_clock_uncertainty -fall_from [get_clocks {KEY[1]}] -rise_to [get_clocks {KEY[1]}] -setup 1.000  
set_clock_uncertainty -fall_from [get_clocks {KEY[1]}] -fall_to [get_clocks {KEY[1]}] -setup 1.000  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[0]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[1]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[2]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[3]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[4]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[5]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[6]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[7]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[8]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[9]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[10]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[11]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[12]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[13]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[14]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[15]}]
set_input_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {SW[16]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX0[0]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX0[1]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX0[2]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX0[3]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX0[4]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX0[5]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX0[6]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX1[0]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX1[1]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX1[2]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX1[3]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX1[4]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX1[5]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX1[6]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX4[0]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX4[1]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX4[2]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX4[3]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX4[4]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX4[5]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX4[6]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX5[0]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX5[1]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX5[2]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX5[3]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX5[4]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX5[5]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX5[6]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX6[0]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX6[1]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX6[2]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX6[3]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX6[4]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX6[5]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX6[6]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX7[0]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX7[1]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX7[2]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX7[3]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX7[4]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX7[5]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {HEX7[6]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDG[8]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[0]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[1]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[2]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[3]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[4]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[5]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[6]}]
set_output_delay -add_delay  -clock [get_clocks {KEY[1]}]  8.000 [get_ports {LEDR[7]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

