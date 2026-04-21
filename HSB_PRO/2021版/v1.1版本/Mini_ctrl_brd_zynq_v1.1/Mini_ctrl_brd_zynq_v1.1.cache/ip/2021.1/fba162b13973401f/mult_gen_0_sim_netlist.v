// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed May 28 16:28:40 2025
// Host        : DESKTOP-NM77GB4 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_17,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [16:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [15:0]P;

  wire [16:0]A;
  wire [15:0]B;
  wire CLK;
  wire [15:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "17" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "32" *) 
  (* C_OUT_LOW = "17" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_17 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
OWAggS0mE6JxmIlB4IqLhyMXRYPJs2DDE2a2JuZy5MB/PdXC/CaU/QRB+AqcK6JP4szhXBycSS8z
iqxQxDTUg4A3iOIyJWDbM6Yncj1VoDx+K0dqn0H+Ux6ekz1SBdoBO4EU4Q5HLCtXLJW8EgM4jzqP
00dxe67N+SsT04R4oZY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W60eta8irdb38mdRDzCg4GlgwIYW3/Lru9l+tJih4ChBAcKfnfaR/vOiTL+ROuIZKJnwzJcrpzmt
gvCgGzHC7YTXilcaPZwKLJGNDJz1ephChHv+dU3RVUsAD/2hTtCy4ufxwBlvovQkfC/Lj1duYn0h
OSEhgHWR+DeMUPK2qQQbBb9ABKyCPg4Lz4jFlEL0WZOm0tl9WkZ2Rm3weM0zt1B539Waq4iEp23R
cjqiwLGibXKz4dVw0e8sQSzt2A1TAWBrBGX3u9QEmYGTRB5cP/N+EuOZmOBNhHzRMDgHUduPy9IS
T0HpKpqzIIZ0OwjalMVA697TIeOPpprjIuzHBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M3QC1E4EAgFwAqgbMpRj62ZSqGtwACtMfRQvzY5xpdVjwZ2o2aUOzqn08h+DpIbitujiMLpxPUyY
lcPiiMFuzADP0+HvnkKh+nqlni8Fnu+SpjDueyH4bQJ2dEx4L2m6E/ZRMYE/21qZ+IL9Mdwhy2zM
6J4NpTA3GU+XaQ48wh0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Joy1pwH/OfLUGgLJRqMOST5TZobooPL/KHnb20ZjYwOKq7TVLXA6nkZ+J/8E9K70lSRvS1UpSRH0
t5Xf+iolfdIIM7/OPQhbsr7sGEWHdc0Q64eg+2GGAtSF2BZhsT705w77/DIW4nJKkUpC+VtMtRti
4i/AZB4v3m63KchVydIiWT2eypZaOcJdUaYuq7w3OS5NU1piGksgHh5Xb+szulbvxqFKE4Euv4Yx
O7uUo/+9PH/CzsgmGmKDh2HAp7VMhCk1Hmog74d7Pl7wyr3Y4dBrBBjw1c9mS9qqLDPt/gNTlehB
iOvhgs2sgiqrvmfcmcjLfXJB/a6mYZAOTPKzdA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g5GY+ruVbJTSNLBZAxKMjzWHqiIBBFLVm0mTIk/27vAJCn/7qN2eNybonN/BbLo0bhsIPnygWtUL
HnBzb30j9hTIkOmb4h3ghEtCopb8bWgen8W+K7lAXMMqSm7UP7SZS+oM+10KcJe73JRSORmhfQmO
1F9OJcu1SAirUVlJoJqHPQM+dVcXzqk6Cy0tnQfjOZzeDPrV6KdMtxexq8eq6tFX+nHwbh71bmwl
4OMHzfEhBHHlRAUDFfsH8FYwkZAH2dnFSqcyb8m+vXobKB4O1tVszhDIgza9r+ofijta9/KCeReP
oi5b+rs6mP4QE2kKqCEN3629NW5mbzUug9MxiA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HNsfBze5a6QtwiAVnGLfFdHHbrU0Oi1c4+CJlHFAOZfXnXZ/b0aEkATWnGGXfvTJAl/Vcr9Whmt+
ekNOhMdu6oXKJ+MJfm2u2jzE3biF+Xa2B9OUw2cnR3sWidPCSfrg1AS5LI2BdlfVD335L8jMJwSV
9dfiE+IthObOKpmZsPiY8zMjdsXwLNxi03pCI8Xly1WwfwvnPHx8W9QTlilHJGrd8NoS1J4RBmrZ
V4U7cpvPr5rFlz0kaBhufye7oY6yr+YRvjdzygxJ9Is4LecDDaRMF4r1PTAtwheEd5a3Fpb6OLzb
12VR4H77zZWEihgmoRyssQ/RlLdENnMf74PhDA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qajdWELb7xq5MRKDXqbY5G9KalZ6KvS/OFspNPgehavTLyCjfNFwOe7rD6u4OQ9DhpFj21XMOcHT
4IpirpdyiIXOWlDbI0L7UF7fg+oZhywH/4zzeLjKZ1VuNWMxku8tJIciokgfgS0Rc5zJRkFE1fFh
XqKbA8o5V2On2ZWFsxXRHCowiAVXpEbk4hoxIV8L5vuYfM+LmEAQrfNmzVr7ggxMKIAYY8HGsD5y
y68JxstiU/xG1rcmnjRIdeZIHXXBRuFGZjouuAthvqQCk4Aqa0dBLg1Pa5bvF8xwe+FNLdELWLsI
p4Imohkk8nqjgLE5kfHUvK6lNSUTJIGtfR7lWQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
G99JGOPeAWEzvhKOQHBjIJBTWpBqc6eHcwpnoconyJGsCO3rY4RPzw0sPWdTfUbZVf28/xzMdMAw
5Bl0VSYMJ3cfG3uenDKsZF2v9KBin+XsJwfKWs/gxK9A2D8qVJQyLd4ION84axXVPxfI5Gzv2FIm
d2V4C4p5YxpnLiGdskIrPJ2AAa4yZEeWuN01HCD/W+H9Ca3vsRn+2VmFDJbOHyec2GOMH66evWmZ
AlFNPDQSwT+6TVCHFXgpOYsFwwIg3mVZl2EBK7oPx1QESXZOnOLee+VELSumkJOFUI2v3kGFm4+2
yANu0tMCR+Ch57FICMokLG1y7s0yZ7DCuokjx1SKM3Ap/yHSSjBMyE6cOAjHL+oF9ZHdDbGV5v0U
s6Ses23kmJMCOcHQDKgORHBaU5DaZgcdobyCs2MMkJo9CarOL4u/Feim00de/2xjgBS0jQPmVxYI
DV5Y6z4b2qpXJD9yvkwweqY8ZifrG3dHasuUscjtRiYqbLIMonADOsos

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Yg8e7EeHtxErkKZVvi6QJXJCvHzYThtbtZDWYWwhr0hMZCh7wlRPMUDcoEsUXREL9HKBlNIU/8Ip
RFJXEQyG4fzyXOfxoqTV5aFAlBcJbbBITUlrf6b/PM/ef8SPakuJVxDFuGpznAfWV7MaQwD4pGCi
1hZVmFLCjiNVZ/pcZslIeU1yCGclZYjf4Ru+ChXq4zcRuRDybOhAnvOk6/sQJZHGiDiA/H5Lghki
plk50q2/VS4rx+xPeNogEvz/tKK3mUhK/3Sx0BqDTR9u+8Ltxs+0gK55oKH0CNj0HtBdvVId3fDy
w5WvPz8SmltzhMCYDtDP+iKXf+EKR9m/Co0FQA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dxsDzddhJVOYm3KUQFMz2BIB0HOy+aE/hsd7vkulITfnJ1EiSpqD0bsmrmJc34MkDgY01tR/a2Sl
z9vWbqGh+1geGSSZWwFs2BW+IZYby18VOh3moDOeWmSlzRFEQJzceHkkS235cRtt/QTUkCjhXpvB
AvdfAVvXQrzrE3oR3t7JD1NH1O6swgRcWcg68VCrXO26r6zoI3pmBWJ7cXMAYc9TCRAduHfK+YED
IIFG2q1IRT3vTgMxBGG5oEhA+KIjJhM6FOhMSzV5O3kwe/m3PQlQRJtiMJK2T/x8cBMCW4xxmh0Q
FWncfSOt75yarXUBCKh2xruICHIit1hiea2rFw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LE8RasIUs1iJ8Qic1Yl99n8lClFl+PBrsUc3y5tgaijO6Q8odJDBwXVGAX3k+/Gv+Qn1FMZjWppi
f16zK9xY+Mu/fVi3JBg8QhLPQPO/h1i8OS+Tb8PIIDDZNrz4lMk7k6DPQY317AhCVyph63MjA9Mi
yEtzNuUzsb5YGVODf7VjAotYJMS7ecK8xymmQT28Awn7+k2TOv3ZXeGFHx7iXuin9dwlWkpuvwR6
vLZN8PLVTeVt26Az3lrxmHU/ET6wSN/QwiEWlviEmmN/rd4G94PTZujFjkGTD/N4PQ+neYbnRjwH
GYm1nY0zXgTfUq1G/kFMf5ZK3tsDaWLymrB+dA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12624)
`pragma protect data_block
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
H/IOICP1gkNXgWOr5uT7DvfNdyvRLWb1uW2Z
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
