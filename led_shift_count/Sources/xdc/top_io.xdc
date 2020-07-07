####################################################################################
# Constraints from file : 'top_io.xdc'
####################################################################################

#///////////////////////////////////////////////////////////////////////////////
#// Device: ZedBoard Zynq Evaluation and Development kit 
#// Design Name: led_shift_count
#// Purpose: Partial Reconfiguration Tutorial
#///////////////////////////////////////////////////////////////////////////////

###############################################################################
# User Time Names / User Time Groups / Time Specs
###############################################################################
create_clock -name gclk -period 5 [get_ports gclk]

#-----------------------------------
# LED LOCs 
#    LED[0-3] shift
#    LED[4-7] count
#-----------------------------------

set_property PACKAGE_PIN T22 [get_ports {shift_out[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {shift_out[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {shift_out[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {shift_out[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {count_out[3]}];  # "LD4"
set_property PACKAGE_PIN W22 [get_ports {count_out[2]}];  # "LD5"
set_property PACKAGE_PIN U19 [get_ports {count_out[1]}];  # "LD6"
set_property PACKAGE_PIN U14 [get_ports {count_out[0]}];  # "LD7"

# For Clock Source
set_property PACKAGE_PIN Y9 [get_ports gclk]

#-----------------------------------
# push buttons LOCs
#-----------------------------------
# Reset Button on "Center Button"
set_property PACKAGE_PIN P16 [get_ports rst_n]

#----------------------------------------------------
# Note that the bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 35 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 35]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 35]];
#set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 35]];

# Note that the bank voltage for IO Bank 13 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
# set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 34]];
# set_property IOSTANDARD LVCMOS25 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];

#-----------------------------------
# End
#-----------------------------------