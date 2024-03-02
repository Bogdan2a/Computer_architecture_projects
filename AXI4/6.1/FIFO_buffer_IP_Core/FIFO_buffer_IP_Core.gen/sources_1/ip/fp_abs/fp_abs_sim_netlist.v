// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 10 11:40:23 2023
// Host        : DESKTOP-OT8PN98 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/bogdi/OneDrive/Desktop/SCS/Lab6/6.1/FIFO_buffer_IP_Core/FIFO_buffer_IP_Core.gen/sources_1/ip/fp_abs/fp_abs_sim_netlist.v
// Design      : fp_abs
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fp_abs,floating_point_v7_1_15,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "floating_point_v7_1_15,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module fp_abs
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
  fp_abs_floating_point_v7_1_15 inst
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
jKNBSFBxAn0Jaw19agEh4r/MARWSbZ7f/Uo5pxqPmZA7ghWvh0Mo4ukM9n5z4i+M9YEDy3TOUbn6
XoAVwko6lC3P/dDeZF60dpOfAnOmp2hVfzN/wdq9WMzPFvOp64X2as9n01lJJlNgdt11Ukv99c+R
keTytup3wxS1CK2l6FS32+KI/3u0yyNFbbqB2jTA0rnnrmUSUsPNJwHGl7WPh2l7ipYfM0sKqfLy
aolLh92xtYdQLHCYmCXnDGT6MVqM70oGMhgS7UzRFYLfC4FF8tfBOHjRNLz5Y3Vg1/e6331zQMF5
WKSYh+A6wGhR/QVjOEptnp9FKSJzI5y1b9Z/bA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FTzZ6V/n0eSy99qwSZ68fHsWfdcnt8s29DlMRhWwDTF2xbOdIY19xDjswEwDYudUQeu/nX5LOUV/
2QhiXq5MtWuH8ngT5WX/ddbC+Sn2jRdPPBvMD7XIhb499A7ztMt/y9Jfe8Gt5XI5FN4VgqcdOgZQ
VzwQsTzYoNwwx+eR1ogtELR09lzC3xj5yhz/DPyQd04FutgMvKDFIXtnYby7rPrhxintja8u5u9q
c1/tQxEy3Ds4ih7nL0B9/zajcIPva0FQlcerh6/CHx6uVWWJNiLjHgElTXnSWhjXtwcfzKXWRjb7
vg6iFYLPtcfZr/OmLpiKPIo5jQRhmTAX6L2WRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13712)
`pragma protect data_block
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
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
