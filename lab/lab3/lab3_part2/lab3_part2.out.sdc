## Generated SDC file "lab3_part2.out.sdc"

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

## DATE    "Sat Nov 16 14:47:27 2019"

##
## DEVICE  "EP4CE115F29C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 10.000 -waveform { 0.000 5.000 } [get_ports {Clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 1.000  
set_clock_uncertainty -rise_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 1.000  
set_clock_uncertainty -fall_from [get_clocks {clk}] -rise_to [get_clocks {clk}] -setup 1.000  
set_clock_uncertainty -fall_from [get_clocks {clk}] -fall_to [get_clocks {clk}] -setup 1.000  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  8.000 [get_ports {D}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  8.000 [get_ports {Q}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  8.000 [get_ports {Qn}]


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

