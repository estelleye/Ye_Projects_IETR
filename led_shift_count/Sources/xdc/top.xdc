####################################################################################
# Constraints from file : 'top.xdc'
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

#-------------------------------------------------
# pblock_count 
#            for pr instance reconfig_module_count
#-------------------------------------------------
create_pblock pblock_count
add_cells_to_pblock [get_pblocks pblock_count]  [get_cells -quiet [list inst_count]]
resize_pblock [get_pblocks pblock_count] -add {SLICE_X136Y50:SLICE_X145Y99}
resize_pblock [get_pblocks pblock_count] -add {RAMB18_X6Y20:RAMB18_X6Y39}
resize_pblock [get_pblocks pblock_count] -add {RAMB36_X6Y10:RAMB36_X6Y19}
set_property RESET_AFTER_RECONFIG 1 [get_pblocks pblock_count]

#-------------------------------------------------
# pblock_shift 
#            for pr instance reconfig_module_shift
#-------------------------------------------------
create_pblock pblock_shift
add_cells_to_pblock [get_pblocks pblock_shift]  [get_cells -quiet [list inst_shift]]
resize_pblock pblock_shift -add {SLICE_X4Y150:SLICE_X9Y199 RAMB18_X0Y60:RAMB18_X0Y79 RAMB36_X0Y30:RAMB36_X0Y39}
set_property RESET_AFTER_RECONFIG 1 [get_pblocks pblock_shift]

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
