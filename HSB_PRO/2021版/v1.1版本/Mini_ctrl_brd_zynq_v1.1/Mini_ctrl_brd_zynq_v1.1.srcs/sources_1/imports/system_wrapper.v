//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Thu May 29 09:37:21 2025
//Host        : DESKTOP-NM77GB4 running 64-bit major release  (build 9200)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (AM2302_SDA_1_0,
    AM2302_SDA_1_ctrl_0,
    AM2302_SDA_2_0,
    AM2302_SDA_2_ctrl_0,
    AM2302_SDA_3_0,
    AM2302_SDA_3_ctrl_0,
    CS_0,
    C_UART_RX_0,
    C_UART_TX_0,
    DC_0,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    DIR_R_0,
    DIR_T_0,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    J_vector_0,
    MA_0,
    MA_RW_0,
    RES_0,
    SCL_0,
    SDA_0,
    SLO_0,
    SLO_RW_0,
    UART_DIR_0,
    UART_IO_0,
    led_green_0,
    led_red_0,
    triger_in_0);
  inout AM2302_SDA_1_0;
  output AM2302_SDA_1_ctrl_0;
  inout AM2302_SDA_2_0;
  output AM2302_SDA_2_ctrl_0;
  inout AM2302_SDA_3_0;
  output AM2302_SDA_3_ctrl_0;
  output CS_0;
  input C_UART_RX_0;
  output C_UART_TX_0;
  output DC_0;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  output DIR_R_0;
  output DIR_T_0;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output [3:0]J_vector_0;
  input MA_0;
  output MA_RW_0;
  output RES_0;
  output SCL_0;
  output SDA_0;
  input SLO_0;
  output SLO_RW_0;
  output UART_DIR_0;
  inout UART_IO_0;
  output led_green_0;
  output led_red_0;
  input triger_in_0;

  wire AM2302_SDA_1_0;
  wire AM2302_SDA_1_ctrl_0;
  wire AM2302_SDA_2_0;
  wire AM2302_SDA_2_ctrl_0;
  wire AM2302_SDA_3_0;
  wire AM2302_SDA_3_ctrl_0;
  wire CS_0;
  wire C_UART_RX_0;
  wire C_UART_TX_0;
  wire DC_0;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire DIR_R_0;
  wire DIR_T_0;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [3:0]J_vector_0;
  wire MA_0;
  wire MA_RW_0;
  wire RES_0;
  wire SCL_0;
  wire SDA_0;
  wire SLO_0;
  wire SLO_RW_0;
  wire UART_DIR_0;
  wire UART_IO_0;
  wire led_green_0;
  wire led_red_0;
  wire triger_in_0;

  system system_i
       (.AM2302_SDA_1_0(AM2302_SDA_1_0),
        .AM2302_SDA_1_ctrl_0(AM2302_SDA_1_ctrl_0),
        .AM2302_SDA_2_0(AM2302_SDA_2_0),
        .AM2302_SDA_2_ctrl_0(AM2302_SDA_2_ctrl_0),
        .AM2302_SDA_3_0(AM2302_SDA_3_0),
        .AM2302_SDA_3_ctrl_0(AM2302_SDA_3_ctrl_0),
        .CS_0(CS_0),
        .C_UART_RX_0(C_UART_RX_0),
        .C_UART_TX_0(C_UART_TX_0),
        .DC_0(DC_0),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .DIR_R_0(DIR_R_0),
        .DIR_T_0(DIR_T_0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .J_vector_0(J_vector_0),
        .MA_0(MA_0),
        .MA_RW_0(MA_RW_0),
        .RES_0(RES_0),
        .SCL_0(SCL_0),
        .SDA_0(SDA_0),
        .SLO_0(SLO_0),
        .SLO_RW_0(SLO_RW_0),
        .UART_DIR_0(UART_DIR_0),
        .UART_IO_0(UART_IO_0),
        .led_green_0(led_green_0),
        .led_red_0(led_red_0),
        .triger_in_0(triger_in_0));
endmodule
