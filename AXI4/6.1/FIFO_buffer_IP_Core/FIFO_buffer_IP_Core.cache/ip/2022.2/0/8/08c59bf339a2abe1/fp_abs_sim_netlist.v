// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 10 11:40:22 2023
// Host        : DESKTOP-OT8PN98 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fp_abs_sim_netlist.v
// Design      : fp_abs
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp_abs,floating_point_v7_1_15,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axis_a_tvalid,
    s_axis_a_tready,
    s_axis_a_tdata,
    m_axis_result_tvalid,
    m_axis_result_tready,
    m_axis_result_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TVALID" *) input s_axis_a_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TREADY" *) output s_axis_a_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_A TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_A, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [31:0]s_axis_a_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *) output m_axis_result_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *) input m_axis_result_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_RESULT, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [31:0]m_axis_result_tdata;

  wire \<const0> ;
  wire [30:0]\^m_axis_result_tdata ;
  wire m_axis_result_tready;
  wire m_axis_result_tvalid;
  wire [31:0]s_axis_a_tdata;
  wire s_axis_a_tready;
  wire s_axis_a_tvalid;
  wire NLW_inst_m_axis_result_tlast_UNCONNECTED;
  wire NLW_inst_s_axis_b_tready_UNCONNECTED;
  wire NLW_inst_s_axis_c_tready_UNCONNECTED;
  wire NLW_inst_s_axis_operation_tready_UNCONNECTED;
  wire [31:31]NLW_inst_m_axis_result_tdata_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_result_tuser_UNCONNECTED;

  assign m_axis_result_tdata[31] = \<const0> ;
  assign m_axis_result_tdata[30:0] = \^m_axis_result_tdata [30:0];
  GND GND
       (.G(\<const0> ));
  (* C_ACCUM_INPUT_MSB = "32" *) 
  (* C_ACCUM_LSB = "-31" *) 
  (* C_ACCUM_MSB = "32" *) 
  (* C_A_FRACTION_WIDTH = "24" *) 
  (* C_A_TDATA_WIDTH = "32" *) 
  (* C_A_TUSER_WIDTH = "1" *) 
  (* C_A_WIDTH = "32" *) 
  (* C_BRAM_USAGE = "0" *) 
  (* C_B_FRACTION_WIDTH = "24" *) 
  (* C_B_TDATA_WIDTH = "32" *) 
  (* C_B_TUSER_WIDTH = "1" *) 
  (* C_B_WIDTH = "32" *) 
  (* C_COMPARE_OPERATION = "8" *) 
  (* C_C_FRACTION_WIDTH = "24" *) 
  (* C_C_TDATA_WIDTH = "32" *) 
  (* C_C_TUSER_WIDTH = "1" *) 
  (* C_C_WIDTH = "32" *) 
  (* C_FIXED_DATA_UNSIGNED = "0" *) 
  (* C_HAS_ABSOLUTE = "1" *) 
  (* C_HAS_ACCUMULATOR_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_A = "0" *) 
  (* C_HAS_ACCUMULATOR_PRIMITIVE_S = "0" *) 
  (* C_HAS_ACCUMULATOR_S = "0" *) 
  (* C_HAS_ACCUM_INPUT_OVERFLOW = "0" *) 
  (* C_HAS_ACCUM_OVERFLOW = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ADD = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_A_TLAST = "0" *) 
  (* C_HAS_A_TUSER = "0" *) 
  (* C_HAS_B = "0" *) 
  (* C_HAS_B_TLAST = "0" *) 
  (* C_HAS_B_TUSER = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_COMPARE = "0" *) 
  (* C_HAS_C_TLAST = "0" *) 
  (* C_HAS_C_TUSER = "0" *) 
  (* C_HAS_DIVIDE = "0" *) 
  (* C_HAS_DIVIDE_BY_ZERO = "0" *) 
  (* C_HAS_EXPONENTIAL = "0" *) 
  (* C_HAS_FIX_TO_FLT = "0" *) 
  (* C_HAS_FLT_TO_FIX = "0" *) 
  (* C_HAS_FLT_TO_FLT = "0" *) 
  (* C_HAS_FMA = "0" *) 
  (* C_HAS_FMS = "0" *) 
  (* C_HAS_INVALID_OP = "0" *) 
  (* C_HAS_LOGARITHM = "0" *) 
  (* C_HAS_MULTIPLY = "0" *) 
  (* C_HAS_OPERATION = "0" *) 
  (* C_HAS_OPERATION_TLAST = "0" *) 
  (* C_HAS_OPERATION_TUSER = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_RECIP = "0" *) 
  (* C_HAS_RECIP_SQRT = "0" *) 
  (* C_HAS_RESULT_TLAST = "0" *) 
  (* C_HAS_RESULT_TUSER = "0" *) 
  (* C_HAS_SQRT = "0" *) 
  (* C_HAS_SUBTRACT = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_A = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ACCUMULATOR_S = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_ADD = "0" *) 
  (* C_HAS_UNFUSED_MULTIPLY_SUB = "0" *) 
  (* C_LATENCY = "0" *) 
  (* C_MULT_USAGE = "0" *) 
  (* C_OPERATION_TDATA_WIDTH = "8" *) 
  (* C_OPERATION_TUSER_WIDTH = "1" *) 
  (* C_OPTIMIZATION = "1" *) 
  (* C_PART = "xc7a35tcpg236-1" *) 
  (* C_RATE = "1" *) 
  (* C_RESULT_FRACTION_WIDTH = "24" *) 
  (* C_RESULT_TDATA_WIDTH = "32" *) 
  (* C_RESULT_TUSER_WIDTH = "1" *) 
  (* C_RESULT_WIDTH = "32" *) 
  (* C_THROTTLE_SCHEME = "1" *) 
  (* C_TLAST_RESOLUTION = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_floating_point_v7_1_15 inst
       (.aclk(1'b0),
        .aclken(1'b1),
        .aresetn(1'b1),
        .m_axis_result_tdata({NLW_inst_m_axis_result_tdata_UNCONNECTED[31],\^m_axis_result_tdata }),
        .m_axis_result_tlast(NLW_inst_m_axis_result_tlast_UNCONNECTED),
        .m_axis_result_tready(m_axis_result_tready),
        .m_axis_result_tuser(NLW_inst_m_axis_result_tuser_UNCONNECTED[0]),
        .m_axis_result_tvalid(m_axis_result_tvalid),
        .s_axis_a_tdata({1'b0,s_axis_a_tdata[30:0]}),
        .s_axis_a_tlast(1'b0),
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_a_tuser(1'b0),
        .s_axis_a_tvalid(s_axis_a_tvalid),
        .s_axis_b_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_b_tlast(1'b0),
        .s_axis_b_tready(NLW_inst_s_axis_b_tready_UNCONNECTED),
        .s_axis_b_tuser(1'b0),
        .s_axis_b_tvalid(1'b0),
        .s_axis_c_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c_tlast(1'b0),
        .s_axis_c_tready(NLW_inst_s_axis_c_tready_UNCONNECTED),
        .s_axis_c_tuser(1'b0),
        .s_axis_c_tvalid(1'b0),
        .s_axis_operation_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_operation_tlast(1'b0),
        .s_axis_operation_tready(NLW_inst_s_axis_operation_tready_UNCONNECTED),
        .s_axis_operation_tuser(1'b0),
        .s_axis_operation_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
mmOvRnJo0hx7+PqMGu3YoWxrEBYAxAdZi1zk+yzEFiZIJMjePV38Oa31uE0BaogpqUs7AS9njISN
GZXX2Xcd9eCF9tXyfpnThXpwLDha12v0ZRAsGKJHWGpBuDMZg6FXSDy2oeRxKIQMa0luoKI0vLk0
yZbC4dlqmTYczcsfIuQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fc8cpYYv5vI/H3z7pnHmVqePZADreJdu3RKVQcBi8nZYms7mT9oN5x0NgM+DUuXRd1Z7x8HYKYeE
kFyxlHaCo/HIJiqVA+2bOXqsng8BbIFNN+FiN3UgJaewkE9dTJVd/ROEVhqxJON57Tx6IVhV0WmJ
cWPYhMeEYFid4FpJ0H3xsk+KcoW4L+xz+/UK9Z+xiowEJep7aUN038Ga9jglCTb40A35B8+G1HZS
h9D3sOXIpp8/2ejcwVIcjIhUkppN+xHEnunW6OkL9vh91/NWQS/u+lphwOKOX+WDuHIngd1xnvKt
+i5AmVHnptjvzDMKlW6nFgNnkugxOVQma/k9HQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DUm+EfBkI7e/sY7EMLDsRVZLuEfIgjt3sfz7ShHtswxkS45dBAv5l/yiKPu9/6DM/iz80pGT45/K
2/hjeTM9CVgsalBokhtLjhdSW6RJFxVp6ZKD9jR7RvDnnrEaAJd+02jPK9YzTdRbTzm0sMHn5mLU
ztqja0MbixEZImt/93U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L0pKmZTGbWTdrIwcHYZ2dWbmD42xIJQXnGlG8XhayhBFtlOYgMREvK9vlHyPS4Isiz6mTW2yh6Qv
OPeDuapEOxbUo7SjK03RgNomPPKnMz5ZpZ4FfhJ56GCAA426m/cAckB5Ni0EugOisw15S0O3/HKb
qWmEcBkcQksqvkCitstRfS8T9LvOXQXTpDNIeo+gEPlQmIe7mfCp8xAJ5TzZDXLLRsK7lSeDj6qp
FCzCOerPsmRxTazCLJBRiRlMrDyjDjq2SYXmTSicf939s/rv31mpdYo4WdsKpJp1c9z8BxTjK1/x
pFKn1uL9i5TBnnp2PTTzxJgbND1J9nSw36/6CQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
4qHn9m5I5jLdIM/fNCqj608HG58k8mMnLL06oke1tI/TPvZ4Kl/RtSd3S+PLIQKxCTyojQBz/kAO
QIzZweo20v/r7iTHLCrsHEXDtFvI78WHwMbz9lg9BDszKLVO+U7VGTdmQrQC9aeYX/M0r/2qDSi1
WycGOpmo3WneDM6hA+pcMjs+byYGYKKNcRISNPkEblobug+u53AdSy7+DOQmJrXef1lUjI6L7/HK
hUtNHd3Qx/d5CwEC58xLAeM2kn57vUXKlTSUsUjVVEol3T7lv84kKHb5yrrcb8lHxV2IojdMO2o1
n9v7EbOJK/7G3Osc9osF+JcJad6wPIsa46INFw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ETbRXS7YQk/Ygxv+Qi9wEi7T+hk+MEMZI95u/c2eFw/pb27fXDUGP48hiMfCyAWlfuwwUH3fQPbz
khlm0LIUo6Xael/yAbJaAcaV66Am02ja53+YiCngXT9RVFQyefaIP/7YcAcFRYW3SxQK5rpXQeBK
Mj9avK2LlvOh+LjIUDQUUQnoZ0qftB72dPfopDt7GDpONMtf8aFY7I2aMTiQLt6NDkPJ5avK+R1b
rLXyWH898NyGxmRWkl0zw0637JVrYNxDIRPMv0uA3ujUDE5JX4TnBweHtgPk6MyO2/pikczw2iP3
l9uU2u8K1wHGqYv32+CcE2yLLNDxLF+4zBT/8g==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DGTJq6GIxpJpCyrcF3lPti11wrEojytsyrjbNsuQDbI/UwSi2ip7dvKR7MkXC8HGDqQ5vPbQSOuR
UY3Xniav28PBFc2qZMK07SKE02Z5QhaTju1tIy6ACa8GVuTGGquCC58NNupc4u/zPB+HeQTXDlrW
r3YrSeCS3VSSwjICQ8HL9+z9e4LSbJtq65BiAlS8V7qn/ENrhwkPWY5FPdBs9Y+C3UdMV/xI5IAA
a8hqPWQswv9vZDRxH/dXI+eklyMbwzbwRZCV1KTx5P5t5VUhFXDehns8OcYJoO7M8kmK7MIpsw2P
2diAjrDolQU/urY1X7gEiYnz3/3fdkLF9ARawQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
MqYYWpi5cUKxeqegUOZ/FE71PbGIeBKRaebYLZrsAQMHxp7rX2HLBfghj8DkaLpBvFZsRe3QHQKz
7J1EMjkJRnAZ99lDMCh1BUBj9yoG3aflK5SgQS3f8wlsLqzxJQbBRYVv77/LYvZT2OjIBhwl+6FU
aRzgPT7kw+CouWg5nRmaPHQpuF7RDIGYw3iAEgHi5JqIhbys9ADrgHdVkby+d1nfJ1QzimhoiEDF
nR2tfpELYmQO6yMjac1NMKwqamfGQ7sv7BCChIwYRvW9l2fN2Yp+2i05nuVSfAyEHC9Z7nSdSPmO
kwN5VI8z8fnBCE/0cAwavWW8BKo3rvlv6KOQXDuNYHOmb8oArzgg3a5htizGcx9BfdyK/+3Pd7u5
iNn4SGpLSWsRwMYQcGbNHsXPsWpEiVtHxs06Tc1S9Arn09eWIggn++2/3CDDG+nYQrcSlMaKtTmX
rbG7zsJpirzPDalNQh3HiAK+ZU+lVyaiMY86sPq6VhY43uq9Z78kF01R

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
j8OUn7H0onPT0+ubA7jLFo+cW7C6hcKI39ZZ2/bHcowL1pbZqDp3KOJxwRqSNOB7aXQ3QKJvcel+
COdVz2X4+AsoLGzifagtsIFiRDNQ2ivmE7jUyJmsfO8F1cLTi2Ezd8szMAP9Q4wvU8Vazm4bGNLk
NceiyiGaMhtt4pPVY4RvuoRdCt3Ic9/usyfgfyjZSgIqc+oT36/FtQPznhXEiWcoc3P3rILT1LfZ
lFz11X3JH70rU3hNTPjhbmy4OtvUpx0hqViwWvMIOHoDuS1aqZegrgD/qnOb+XPD4U3gzoaEu1oj
KOFl4N48DoB8AvG8tlxSJLWw7OYcwucfAsGsGw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
THsjo29p+H32PTILjUpSy67gEex94WgCqTPLGFK6Y5gMKxy8L+Kafqmw4Nwpv44WV294flYv5QS9
exXmJAOr4ToMJfk+iYue04FuCFpYH6MEOuZCD/p3F4tIcOfLdCdunVctrC/1OFFVzHVuktcTL8kZ
c9USq2X/jqwRueXKdZB6Ehx4Ct7DtO6ttRW8ws402cr9CCIfxRx8FPyss6UUfrfc8NXHhKA4Qdh5
Yy4jApQzB5iTz5v+TMMXljz9ftr2fx9vcROVg+FicnjChbcZpjuIWCU1N2HSS3Jea5rGnYP7ukqh
zQo/V9cgN34T3xFaYSsEW9XfO8dfvE8GiEzqKA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
6AQnI83CCIoukYJRmqc6wh+JwvDx4duYq8dRf1i1j2lRi32uWxvnhQW2NHQjs6Dkthf/4MDf62Y6
VDy3+48hS+v+Ac1EFJe+hIh9I1mK8mm6xkkqEAXKISlpxSI+R5iLC/DIsgMa7ilFuuSztw22g5jK
Uone6R4AmOi3rIDqb7Cve3li2lDioXlROOSY4ZKeRm3dXBDerIIVCUhWejzRn+lhg9KcCikt/Upj
IVOanlLnO8BoYH2koF83x0BTR5oAlcvFVL/bAx9Wn7D7ye512yvGB0dY43N9cXrjl0y1fdD70Y3B
zAYpxTfPWtYRFfuju8cyu4gCwwameiNyOvNXFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13712)
`pragma protect data_block
+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
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
