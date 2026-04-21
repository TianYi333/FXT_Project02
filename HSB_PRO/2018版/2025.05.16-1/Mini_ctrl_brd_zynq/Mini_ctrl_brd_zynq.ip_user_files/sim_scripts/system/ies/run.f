-makelib ies_lib/xilinx_vip -sv \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/APP/Vivado-Xilinx/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_4 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/processing_system7_vip_v1_0_6 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_3_6 \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_1_0 \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_2 \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_5 \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/4649/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/979d/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_arsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_rsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_awsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_wsw_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_bsw_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_s00mmu_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_s00tr_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/9ade/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_s00sic_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_s00a2s_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_sarn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_srn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/sim/bd_44e3_sawn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/sim/bd_44e3_swn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_15/sim/bd_44e3_sbn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/sim/bd_44e3_m00s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/sim/bd_44e3_m00arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/sim/bd_44e3_m00rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/sim/bd_44e3_m00awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/sim/bd_44e3_m00wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/sim/bd_44e3_m00bn_0.sv" \
-endlib
-makelib ies_lib/smartconnect_v1_0 -sv \
  "../../../../Mini_ctrl_brd_zynq.srcs/sources_1/bd/system/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/sim/bd_44e3_m00e_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/sim/bd_44e3_m01s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/sim/bd_44e3_m01arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/sim/bd_44e3_m01rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/sim/bd_44e3_m01awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_27/sim/bd_44e3_m01wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_28/sim/bd_44e3_m01bn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_29/sim/bd_44e3_m01e_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_30/sim/bd_44e3_m02s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_31/sim/bd_44e3_m02arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_32/sim/bd_44e3_m02rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_33/sim/bd_44e3_m02awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_34/sim/bd_44e3_m02wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_35/sim/bd_44e3_m02bn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_36/sim/bd_44e3_m02e_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_37/sim/bd_44e3_m03s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_38/sim/bd_44e3_m03arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_39/sim/bd_44e3_m03rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_40/sim/bd_44e3_m03awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_41/sim/bd_44e3_m03wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_42/sim/bd_44e3_m03bn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_43/sim/bd_44e3_m03e_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_44/sim/bd_44e3_m04s2a_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_45/sim/bd_44e3_m04arn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_46/sim/bd_44e3_m04rn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_47/sim/bd_44e3_m04awn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_48/sim/bd_44e3_m04wn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_49/sim/bd_44e3_m04bn_0.sv" \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_50/sim/bd_44e3_m04e_0.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \
  "../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_50M_0/sim/system_rst_ps7_0_50M_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ipshared/48b7/src/breath_led.v" \
  "../../../bd/system/ipshared/48b7/hdl/breath_led_ip_v1_0_S0_AXI.v" \
  "../../../bd/system/ipshared/48b7/hdl/breath_led_ip_v1_0.v" \
  "../../../bd/system/ip/system_breath_led_ip_0_1/sim/system_breath_led_ip_0_1.v" \
  "../../../bd/system/ip/system_breath_led_ip_1_0/sim/system_breath_led_ip_1_0.v" \
  "../../../bd/system/ipshared/77f5/src/bram_rd.v" \
  "../../../bd/system/ipshared/77f5/hdl/pl_bram_rd_v1_0_S00_AXI.v" \
  "../../../bd/system/ipshared/77f5/hdl/pl_bram_rd_v1_0.v" \
  "../../../bd/system/ip/system_pl_bram_rd_0_0/sim/system_pl_bram_rd_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/system/ipshared/7a0b/hdl/AM2302_v1_0_S00_AXI.vhd" \
  "../../../bd/system/ipshared/7a0b/hdl/fun_am2302_check.vhd" \
  "../../../bd/system/ipshared/7a0b/hdl/AM2302_v1_0.vhd" \
  "../../../bd/system/ip/system_AM2302_0_0/sim/system_AM2302_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

