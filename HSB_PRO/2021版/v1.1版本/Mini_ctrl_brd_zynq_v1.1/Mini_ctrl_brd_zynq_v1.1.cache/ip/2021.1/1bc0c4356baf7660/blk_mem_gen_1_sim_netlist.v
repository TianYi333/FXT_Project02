// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed May 28 16:29:41 2025
// Host        : DESKTOP-NM77GB4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [15:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.652799 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 43440)
`pragma protect data_block
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
BicoxmhL
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
