vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_10
vlib questa_lib/msim/processing_system7_vip_v1_0_12
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_23
vlib questa_lib/msim/axi_register_slice_v2_1_24
vlib questa_lib/msim/axi_protocol_converter_v2_1_24

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 questa_lib/msim/axi_vip_v1_1_10
vmap processing_system7_vip_v1_0_12 questa_lib/msim/processing_system7_vip_v1_0_12
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 questa_lib/msim/axi_data_fifo_v2_1_23
vmap axi_register_slice_v2_1_24 questa_lib/msim/axi_register_slice_v2_1_24
vmap axi_protocol_converter_v2_1_24 questa_lib/msim/axi_protocol_converter_v2_1_24

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_12  -incr -mfcu -sv -L axi_vip_v1_1_10 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/system/ip/system_rst_ps7_0_125M_0/sim/system_rst_ps7_0_125M_0.vhd" \
"../../../bd/system/ipshared/979e/hdl/axi4_2_gmii.vhd" \
"../../../bd/system/ipshared/979e/hdl/ps_pl_axi4_v1_0_S00_AXI.vhd" \
"../../../bd/system/ipshared/979e/hdl/ps_pl_axi4_v1_0.vhd" \
"../../../bd/system/ip/system_ps_pl_axi4_0_0/sim/system_ps_pl_axi4_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_TOP_0_0/sim/system_TOP_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5  -93 \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_24  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Mini_ctrl_brd_zynq_v1.1.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

