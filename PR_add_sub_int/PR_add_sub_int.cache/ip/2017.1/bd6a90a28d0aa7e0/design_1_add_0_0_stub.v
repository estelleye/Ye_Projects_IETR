// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Mon Jun 17 10:19:04 2019
// Host        : pc-ietr65 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_add_0_0_stub.v
// Design      : design_1_add_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "add,Vivado 2017.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ap_clk, ap_rst_n, in1_TVALID, in1_TREADY, 
  in1_TDATA, in1_TLAST, in2_TVALID, in2_TREADY, in2_TDATA, in2_TLAST, out_r_TVALID, out_r_TREADY, 
  out_r_TDATA, out_r_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,in1_TVALID,in1_TREADY,in1_TDATA[31:0],in1_TLAST[0:0],in2_TVALID,in2_TREADY,in2_TDATA[31:0],in2_TLAST[0:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[31:0],out_r_TLAST[0:0]" */;
  input ap_clk;
  input ap_rst_n;
  input in1_TVALID;
  output in1_TREADY;
  input [31:0]in1_TDATA;
  input [0:0]in1_TLAST;
  input in2_TVALID;
  output in2_TREADY;
  input [31:0]in2_TDATA;
  input [0:0]in2_TLAST;
  output out_r_TVALID;
  input out_r_TREADY;
  output [31:0]out_r_TDATA;
  output [0:0]out_r_TLAST;
endmodule
