// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:TOP:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_TOP_0_0 (
  clk_in,
  triger_in,
  UART_DIR,
  UART_IO,
  DIR_T,
  DIR_R,
  C_UART_RX,
  C_UART_TX,
  led_red,
  led_green,
  AM2302_SDA_1,
  AM2302_SDA_2,
  AM2302_SDA_3,
  AM2302_SDA_1_ctrl,
  AM2302_SDA_2_ctrl,
  AM2302_SDA_3_ctrl,
  CS,
  DC,
  RES,
  SDA,
  SCL,
  J_vector,
  MA,
  SLO,
  MA_RW,
  SLO_RW,
  rx_cmd,
  rx_cmd_valid,
  tx_cmd,
  tx_cmd_valid,
  rx_data_valid,
  rx_data_last,
  rx_data_data,
  tx_data_valid,
  tx_data_last,
  tx_data_data
);

input wire clk_in;
input wire triger_in;
output wire UART_DIR;
inout wire UART_IO;
output wire DIR_T;
output wire DIR_R;
input wire C_UART_RX;
output wire C_UART_TX;
output wire led_red;
output wire led_green;
inout wire AM2302_SDA_1;
inout wire AM2302_SDA_2;
inout wire AM2302_SDA_3;
output wire AM2302_SDA_1_ctrl;
output wire AM2302_SDA_2_ctrl;
output wire AM2302_SDA_3_ctrl;
output wire CS;
output wire DC;
output wire RES;
output wire SDA;
output wire SCL;
output wire [3 : 0] J_vector;
input wire MA;
input wire SLO;
output wire MA_RW;
output wire SLO_RW;
input wire [15 : 0] rx_cmd;
input wire rx_cmd_valid;
output wire [15 : 0] tx_cmd;
output wire tx_cmd_valid;
input wire rx_data_valid;
input wire rx_data_last;
input wire [7 : 0] rx_data_data;
output wire tx_data_valid;
output wire tx_data_last;
output wire [7 : 0] tx_data_data;

  TOP #(
    .CC01_regs_project(32'H50726F20),
    .CC01_regs_year_month(32'H20250526),
    .CC01_regs_sub_version(32'H00000001)
  ) inst (
    .clk_in(clk_in),
    .triger_in(triger_in),
    .UART_DIR(UART_DIR),
    .UART_IO(UART_IO),
    .DIR_T(DIR_T),
    .DIR_R(DIR_R),
    .C_UART_RX(C_UART_RX),
    .C_UART_TX(C_UART_TX),
    .led_red(led_red),
    .led_green(led_green),
    .AM2302_SDA_1(AM2302_SDA_1),
    .AM2302_SDA_2(AM2302_SDA_2),
    .AM2302_SDA_3(AM2302_SDA_3),
    .AM2302_SDA_1_ctrl(AM2302_SDA_1_ctrl),
    .AM2302_SDA_2_ctrl(AM2302_SDA_2_ctrl),
    .AM2302_SDA_3_ctrl(AM2302_SDA_3_ctrl),
    .CS(CS),
    .DC(DC),
    .RES(RES),
    .SDA(SDA),
    .SCL(SCL),
    .J_vector(J_vector),
    .MA(MA),
    .SLO(SLO),
    .MA_RW(MA_RW),
    .SLO_RW(SLO_RW),
    .rx_cmd(rx_cmd),
    .rx_cmd_valid(rx_cmd_valid),
    .tx_cmd(tx_cmd),
    .tx_cmd_valid(tx_cmd_valid),
    .rx_data_valid(rx_data_valid),
    .rx_data_last(rx_data_last),
    .rx_data_data(rx_data_data),
    .tx_data_valid(tx_data_valid),
    .tx_data_last(tx_data_last),
    .tx_data_data(tx_data_data)
  );
endmodule
