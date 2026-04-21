
################################################################
# This is a generated script based on design: system
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source system_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# TOP

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name system

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]

  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]


  # Create ports
  set AM2302_SDA_1_0 [ create_bd_port -dir IO AM2302_SDA_1_0 ]
  set AM2302_SDA_1_ctrl_0 [ create_bd_port -dir O AM2302_SDA_1_ctrl_0 ]
  set AM2302_SDA_2_0 [ create_bd_port -dir IO AM2302_SDA_2_0 ]
  set AM2302_SDA_2_ctrl_0 [ create_bd_port -dir O AM2302_SDA_2_ctrl_0 ]
  set AM2302_SDA_3_0 [ create_bd_port -dir IO AM2302_SDA_3_0 ]
  set AM2302_SDA_3_ctrl_0 [ create_bd_port -dir O AM2302_SDA_3_ctrl_0 ]
  set CS_0 [ create_bd_port -dir O CS_0 ]
  set C_UART_RX_0 [ create_bd_port -dir I C_UART_RX_0 ]
  set C_UART_TX_0 [ create_bd_port -dir O C_UART_TX_0 ]
  set DC_0 [ create_bd_port -dir O DC_0 ]
  set DIR_R_0 [ create_bd_port -dir O DIR_R_0 ]
  set DIR_T_0 [ create_bd_port -dir O DIR_T_0 ]
  set J_vector_0 [ create_bd_port -dir O -from 3 -to 0 J_vector_0 ]
  set MA_0 [ create_bd_port -dir I MA_0 ]
  set MA_RW_0 [ create_bd_port -dir O MA_RW_0 ]
  set RES_0 [ create_bd_port -dir O RES_0 ]
  set SCL_0 [ create_bd_port -dir O SCL_0 ]
  set SDA_0 [ create_bd_port -dir O SDA_0 ]
  set SLO_0 [ create_bd_port -dir I SLO_0 ]
  set SLO_RW_0 [ create_bd_port -dir O SLO_RW_0 ]
  set UART_DIR_0 [ create_bd_port -dir O UART_DIR_0 ]
  set UART_IO_0 [ create_bd_port -dir IO UART_IO_0 ]
  set led_green_0 [ create_bd_port -dir O led_green_0 ]
  set led_red_0 [ create_bd_port -dir O led_red_0 ]
  set triger_in_0 [ create_bd_port -dir I triger_in_0 ]

  # Create instance: TOP_0, and set properties
  set block_name TOP
  set block_cell_name TOP_0
  if { [catch {set TOP_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $TOP_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
   CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
   CONFIG.PCW_FPGA_FCLK1_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK2_ENABLE {0} \
   CONFIG.PCW_FPGA_FCLK3_ENABLE {0} \
   CONFIG.PCW_MIO_1_DIRECTION {out} \
   CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_1_PULLUP {enabled} \
   CONFIG.PCW_MIO_1_SLEW {slow} \
   CONFIG.PCW_MIO_2_DIRECTION {inout} \
   CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_2_PULLUP {disabled} \
   CONFIG.PCW_MIO_2_SLEW {slow} \
   CONFIG.PCW_MIO_3_DIRECTION {inout} \
   CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_3_PULLUP {disabled} \
   CONFIG.PCW_MIO_3_SLEW {slow} \
   CONFIG.PCW_MIO_4_DIRECTION {inout} \
   CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_4_PULLUP {disabled} \
   CONFIG.PCW_MIO_4_SLEW {slow} \
   CONFIG.PCW_MIO_5_DIRECTION {inout} \
   CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_5_PULLUP {disabled} \
   CONFIG.PCW_MIO_5_SLEW {slow} \
   CONFIG.PCW_MIO_6_DIRECTION {out} \
   CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
   CONFIG.PCW_MIO_6_PULLUP {disabled} \
   CONFIG.PCW_MIO_6_SLEW {slow} \
   CONFIG.PCW_MIO_TREE_PERIPHERALS {unassigned#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI\
Flash#Quad SPI\
Flash#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#UART\
0#UART 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet\
0#Enet 0#Enet\
0#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#SD\
1#SD 1#SD 1#SD 1#SD 1#SD 1#Enet 0#Enet 0}\
   CONFIG.PCW_MIO_TREE_SIGNALS {unassigned#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]/HOLD_B#qspi0_sclk#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#rx#tx#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#unassigned#data[0]#cmd#clk#data[1]#data[2]#data[3]#mdc#mdio}\
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
   CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
   CONFIG.PCW_SINGLE_QSPI_DATA_MODE {x4} \
 ] $processing_system7_0

  # Create instance: ps7_0_axi_periph, and set properties
  set ps7_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 ps7_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
 ] $ps7_0_axi_periph

  # Create instance: ps_pl_axi4_0, and set properties
  set ps_pl_axi4_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ps_pl_axi4:1.0 ps_pl_axi4_0 ]

  # Create instance: rst_ps7_0_125M, and set properties
  set rst_ps7_0_125M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ps7_0_125M ]

  # Create interface connections
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_M_AXI_GP0 [get_bd_intf_pins processing_system7_0/M_AXI_GP0] [get_bd_intf_pins ps7_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net ps7_0_axi_periph_M00_AXI [get_bd_intf_pins ps7_0_axi_periph/M00_AXI] [get_bd_intf_pins ps_pl_axi4_0/S00_AXI]

  # Create port connections
  connect_bd_net -net C_UART_RX_0_1 [get_bd_ports C_UART_RX_0] [get_bd_pins TOP_0/C_UART_RX]
  connect_bd_net -net MA_0_1 [get_bd_ports MA_0] [get_bd_pins TOP_0/MA]
  connect_bd_net -net Net [get_bd_ports AM2302_SDA_1_0] [get_bd_pins TOP_0/AM2302_SDA_1]
  connect_bd_net -net Net1 [get_bd_ports AM2302_SDA_2_0] [get_bd_pins TOP_0/AM2302_SDA_2]
  connect_bd_net -net Net2 [get_bd_ports AM2302_SDA_3_0] [get_bd_pins TOP_0/AM2302_SDA_3]
  connect_bd_net -net Net3 [get_bd_ports UART_IO_0] [get_bd_pins TOP_0/UART_IO]
  connect_bd_net -net SLO_0_1 [get_bd_ports SLO_0] [get_bd_pins TOP_0/SLO]
  connect_bd_net -net TOP_0_AM2302_SDA_1_ctrl [get_bd_ports AM2302_SDA_1_ctrl_0] [get_bd_pins TOP_0/AM2302_SDA_1_ctrl]
  connect_bd_net -net TOP_0_AM2302_SDA_2_ctrl [get_bd_ports AM2302_SDA_2_ctrl_0] [get_bd_pins TOP_0/AM2302_SDA_2_ctrl]
  connect_bd_net -net TOP_0_AM2302_SDA_3_ctrl [get_bd_ports AM2302_SDA_3_ctrl_0] [get_bd_pins TOP_0/AM2302_SDA_3_ctrl]
  connect_bd_net -net TOP_0_CS [get_bd_ports CS_0] [get_bd_pins TOP_0/CS]
  connect_bd_net -net TOP_0_C_UART_TX [get_bd_ports C_UART_TX_0] [get_bd_pins TOP_0/C_UART_TX]
  connect_bd_net -net TOP_0_DC [get_bd_ports DC_0] [get_bd_pins TOP_0/DC]
  connect_bd_net -net TOP_0_DIR_R [get_bd_ports DIR_R_0] [get_bd_pins TOP_0/DIR_R]
  connect_bd_net -net TOP_0_DIR_T [get_bd_ports DIR_T_0] [get_bd_pins TOP_0/DIR_T]
  connect_bd_net -net TOP_0_J_vector [get_bd_ports J_vector_0] [get_bd_pins TOP_0/J_vector]
  connect_bd_net -net TOP_0_MA_RW [get_bd_ports MA_RW_0] [get_bd_pins TOP_0/MA_RW]
  connect_bd_net -net TOP_0_RES [get_bd_ports RES_0] [get_bd_pins TOP_0/RES]
  connect_bd_net -net TOP_0_SCL [get_bd_ports SCL_0] [get_bd_pins TOP_0/SCL]
  connect_bd_net -net TOP_0_SDA [get_bd_ports SDA_0] [get_bd_pins TOP_0/SDA]
  connect_bd_net -net TOP_0_SLO_RW [get_bd_ports SLO_RW_0] [get_bd_pins TOP_0/SLO_RW]
  connect_bd_net -net TOP_0_UART_DIR [get_bd_ports UART_DIR_0] [get_bd_pins TOP_0/UART_DIR]
  connect_bd_net -net TOP_0_led_green [get_bd_ports led_green_0] [get_bd_pins TOP_0/led_green]
  connect_bd_net -net TOP_0_led_red [get_bd_ports led_red_0] [get_bd_pins TOP_0/led_red]
  connect_bd_net -net TOP_0_tx_cmd [get_bd_pins TOP_0/tx_cmd] [get_bd_pins ps_pl_axi4_0/tx_cmd]
  connect_bd_net -net TOP_0_tx_cmd_valid [get_bd_pins TOP_0/tx_cmd_valid] [get_bd_pins ps_pl_axi4_0/tx_cmd_valid]
  connect_bd_net -net TOP_0_tx_data_data [get_bd_pins TOP_0/tx_data_data] [get_bd_pins ps_pl_axi4_0/tx_data_data]
  connect_bd_net -net TOP_0_tx_data_last [get_bd_pins TOP_0/tx_data_last] [get_bd_pins ps_pl_axi4_0/tx_data_last]
  connect_bd_net -net TOP_0_tx_data_valid [get_bd_pins TOP_0/tx_data_valid] [get_bd_pins ps_pl_axi4_0/tx_data_valid]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins TOP_0/clk_in] [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK] [get_bd_pins ps7_0_axi_periph/ACLK] [get_bd_pins ps7_0_axi_periph/M00_ACLK] [get_bd_pins ps7_0_axi_periph/S00_ACLK] [get_bd_pins ps_pl_axi4_0/s00_axi_aclk] [get_bd_pins rst_ps7_0_125M/slowest_sync_clk]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins rst_ps7_0_125M/ext_reset_in]
  connect_bd_net -net ps_pl_axi4_0_rx_cmd [get_bd_pins TOP_0/rx_cmd] [get_bd_pins ps_pl_axi4_0/rx_cmd]
  connect_bd_net -net ps_pl_axi4_0_rx_cmd_valid [get_bd_pins TOP_0/rx_cmd_valid] [get_bd_pins ps_pl_axi4_0/rx_cmd_valid]
  connect_bd_net -net ps_pl_axi4_0_rx_data_data [get_bd_pins TOP_0/rx_data_data] [get_bd_pins ps_pl_axi4_0/rx_data_data]
  connect_bd_net -net ps_pl_axi4_0_rx_data_last [get_bd_pins TOP_0/rx_data_last] [get_bd_pins ps_pl_axi4_0/rx_data_last]
  connect_bd_net -net ps_pl_axi4_0_rx_data_valid [get_bd_pins TOP_0/rx_data_valid] [get_bd_pins ps_pl_axi4_0/rx_data_valid]
  connect_bd_net -net rst_ps7_0_125M_peripheral_aresetn [get_bd_pins ps7_0_axi_periph/ARESETN] [get_bd_pins ps7_0_axi_periph/M00_ARESETN] [get_bd_pins ps7_0_axi_periph/S00_ARESETN] [get_bd_pins ps_pl_axi4_0/s00_axi_aresetn] [get_bd_pins rst_ps7_0_125M/peripheral_aresetn]
  connect_bd_net -net triger_in_0_1 [get_bd_ports triger_in_0] [get_bd_pins TOP_0/triger_in]

  # Create address segments
  assign_bd_address -offset 0x43C00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces processing_system7_0/Data] [get_bd_addr_segs ps_pl_axi4_0/S00_AXI/S00_AXI_reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


