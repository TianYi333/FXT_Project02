// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Pro_FPGA_ctrl_v1_0,Vivado 2018.3" *)
module system_Pro_FPGA_ctrl_0_1(triger_in, UART_DIR, UART_IO, DIR_T, DIR_R, 
  C_UART_RX, C_UART_TX, led_red, led_green, AM2302_SDA_1, AM2302_SDA_2, AM2302_SDA_3, 
  AM2302_SDA_1_ctrl, AM2302_SDA_2_ctrl, AM2302_SDA_3_ctrl, CS, DC, RES, SDA, SCL, J_vector, MA, SLO, 
  MA_RW, SLO_RW, s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, 
  s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, 
  s00_axi_wready, s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, 
  s00_axi_arprot, s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, 
  s00_axi_rvalid, s00_axi_rready);
  input triger_in;
  output UART_DIR;
  inout UART_IO;
  output DIR_T;
  output DIR_R;
  input C_UART_RX;
  output C_UART_TX;
  output led_red;
  output led_green;
  inout AM2302_SDA_1;
  inout AM2302_SDA_2;
  inout AM2302_SDA_3;
  output AM2302_SDA_1_ctrl;
  output AM2302_SDA_2_ctrl;
  output AM2302_SDA_3_ctrl;
  output CS;
  output DC;
  output RES;
  output SDA;
  output SCL;
  output [3:0]J_vector;
  input MA;
  input SLO;
  output MA_RW;
  output SLO_RW;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [6:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [6:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
