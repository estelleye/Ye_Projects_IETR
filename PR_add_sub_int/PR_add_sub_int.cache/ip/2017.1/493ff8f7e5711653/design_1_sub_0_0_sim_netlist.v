// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
// Date        : Mon Jun 17 10:41:05 2019
// Host        : pc-ietr65 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_sub_0_0_sim_netlist.v
// Design      : design_1_sub_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_sub_0_0,sub,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "sub,Vivado 2017.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ap_clk,
    ap_rst_n,
    in1_TVALID,
    in1_TREADY,
    in1_TDATA,
    in1_TLAST,
    in2_TVALID,
    in2_TREADY,
    in2_TDATA,
    in2_TLAST,
    out_r_TVALID,
    out_r_TREADY,
    out_r_TDATA,
    out_r_TLAST);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) input ap_rst_n;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in1 TVALID" *) input in1_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in1 TREADY" *) output in1_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in1 TDATA" *) input [31:0]in1_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in1 TLAST" *) input [0:0]in1_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in2 TVALID" *) input in2_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in2 TREADY" *) output in2_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in2 TDATA" *) input [31:0]in2_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 in2 TLAST" *) input [0:0]in2_TLAST;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 out_r TVALID" *) output out_r_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 out_r TREADY" *) input out_r_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 out_r TDATA" *) output [31:0]out_r_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 out_r TLAST" *) output [0:0]out_r_TLAST;

  wire ap_clk;
  wire ap_rst_n;
  wire [31:0]in1_TDATA;
  wire [0:0]in1_TLAST;
  wire in1_TREADY;
  wire in1_TVALID;
  wire [31:0]in2_TDATA;
  wire [0:0]in2_TLAST;
  wire in2_TREADY;
  wire in2_TVALID;
  wire [31:0]out_r_TDATA;
  wire [0:0]out_r_TLAST;
  wire out_r_TREADY;
  wire out_r_TVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sub U0
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .in1_TDATA(in1_TDATA),
        .in1_TLAST(in1_TLAST),
        .in1_TREADY(in1_TREADY),
        .in1_TVALID(in1_TVALID),
        .in2_TDATA(in2_TDATA),
        .in2_TLAST(in2_TLAST),
        .in2_TREADY(in2_TREADY),
        .in2_TVALID(in2_TVALID),
        .out_r_TDATA(out_r_TDATA),
        .out_r_TLAST(out_r_TLAST),
        .out_r_TREADY(out_r_TREADY),
        .out_r_TVALID(out_r_TVALID));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sub
   (ap_clk,
    ap_rst_n,
    in1_TDATA,
    in1_TVALID,
    in1_TREADY,
    in1_TLAST,
    in2_TDATA,
    in2_TVALID,
    in2_TREADY,
    in2_TLAST,
    out_r_TDATA,
    out_r_TVALID,
    out_r_TREADY,
    out_r_TLAST);
  input ap_clk;
  input ap_rst_n;
  input [31:0]in1_TDATA;
  input in1_TVALID;
  output in1_TREADY;
  input [0:0]in1_TLAST;
  input [31:0]in2_TDATA;
  input in2_TVALID;
  output in2_TREADY;
  input [0:0]in2_TLAST;
  output [31:0]out_r_TDATA;
  output out_r_TVALID;
  input out_r_TREADY;
  output [0:0]out_r_TLAST;

  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire \ap_CS_fsm_reg_n_0_[2] ;
  wire ap_CS_fsm_state2;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [31:0]in1_TDATA;
  wire [0:0]in1_TLAST;
  wire in1_TREADY;
  wire in1_TVALID;
  wire in1_data_0_ack_in;
  wire [30:0]in1_data_0_data_out;
  wire in1_data_0_load_B;
  wire [31:0]in1_data_0_payload_A;
  wire \in1_data_0_payload_A[31]_i_1_n_0 ;
  wire [31:0]in1_data_0_payload_B;
  wire in1_data_0_sel;
  wire in1_data_0_sel_rd_i_1_n_0;
  wire in1_data_0_sel_wr;
  wire in1_data_0_sel_wr_i_1_n_0;
  wire \in1_data_0_state[0]_i_1_n_0 ;
  wire \in1_data_0_state[1]_i_1_n_0 ;
  wire \in1_data_0_state_reg_n_0_[0] ;
  wire in1_last_V_0_payload_A;
  wire \in1_last_V_0_payload_A[0]_i_1_n_0 ;
  wire in1_last_V_0_payload_B;
  wire \in1_last_V_0_payload_B[0]_i_1_n_0 ;
  wire in1_last_V_0_sel;
  wire in1_last_V_0_sel_rd_i_1_n_0;
  wire in1_last_V_0_sel_wr;
  wire in1_last_V_0_sel_wr_i_1_n_0;
  wire \in1_last_V_0_state[0]_i_1_n_0 ;
  wire \in1_last_V_0_state[1]_i_2_n_0 ;
  wire \in1_last_V_0_state_reg_n_0_[0] ;
  wire [31:0]in2_TDATA;
  wire in2_TREADY;
  wire in2_TVALID;
  wire in2_data_0_ack_in;
  wire in2_data_0_load_B;
  wire [31:0]in2_data_0_payload_A;
  wire \in2_data_0_payload_A[31]_i_1_n_0 ;
  wire [31:0]in2_data_0_payload_B;
  wire in2_data_0_sel;
  wire in2_data_0_sel_rd_i_1_n_0;
  wire in2_data_0_sel_wr;
  wire in2_data_0_sel_wr_i_1_n_0;
  wire \in2_data_0_state[0]_i_1_n_0 ;
  wire \in2_data_0_state[1]_i_1_n_0 ;
  wire \in2_data_0_state_reg_n_0_[0] ;
  wire \in2_last_V_0_state[0]_i_1_n_0 ;
  wire \in2_last_V_0_state[1]_i_1_n_0 ;
  wire \in2_last_V_0_state_reg_n_0_[0] ;
  wire out_data_1_ack_in;
  wire out_data_1_load_B;
  wire [31:0]out_data_1_payload_A;
  wire \out_data_1_payload_A[11]_i_6_n_0 ;
  wire \out_data_1_payload_A[11]_i_7_n_0 ;
  wire \out_data_1_payload_A[11]_i_8_n_0 ;
  wire \out_data_1_payload_A[11]_i_9_n_0 ;
  wire \out_data_1_payload_A[15]_i_6_n_0 ;
  wire \out_data_1_payload_A[15]_i_7_n_0 ;
  wire \out_data_1_payload_A[15]_i_8_n_0 ;
  wire \out_data_1_payload_A[15]_i_9_n_0 ;
  wire \out_data_1_payload_A[19]_i_6_n_0 ;
  wire \out_data_1_payload_A[19]_i_7_n_0 ;
  wire \out_data_1_payload_A[19]_i_8_n_0 ;
  wire \out_data_1_payload_A[19]_i_9_n_0 ;
  wire \out_data_1_payload_A[23]_i_6_n_0 ;
  wire \out_data_1_payload_A[23]_i_7_n_0 ;
  wire \out_data_1_payload_A[23]_i_8_n_0 ;
  wire \out_data_1_payload_A[23]_i_9_n_0 ;
  wire \out_data_1_payload_A[27]_i_6_n_0 ;
  wire \out_data_1_payload_A[27]_i_7_n_0 ;
  wire \out_data_1_payload_A[27]_i_8_n_0 ;
  wire \out_data_1_payload_A[27]_i_9_n_0 ;
  wire \out_data_1_payload_A[31]_i_1_n_0 ;
  wire \out_data_1_payload_A[31]_i_6_n_0 ;
  wire \out_data_1_payload_A[31]_i_7_n_0 ;
  wire \out_data_1_payload_A[31]_i_8_n_0 ;
  wire \out_data_1_payload_A[31]_i_9_n_0 ;
  wire \out_data_1_payload_A[3]_i_6_n_0 ;
  wire \out_data_1_payload_A[3]_i_7_n_0 ;
  wire \out_data_1_payload_A[3]_i_8_n_0 ;
  wire \out_data_1_payload_A[3]_i_9_n_0 ;
  wire \out_data_1_payload_A[7]_i_6_n_0 ;
  wire \out_data_1_payload_A[7]_i_7_n_0 ;
  wire \out_data_1_payload_A[7]_i_8_n_0 ;
  wire \out_data_1_payload_A[7]_i_9_n_0 ;
  wire \out_data_1_payload_A_reg[11]_i_1_n_0 ;
  wire \out_data_1_payload_A_reg[11]_i_1_n_1 ;
  wire \out_data_1_payload_A_reg[11]_i_1_n_2 ;
  wire \out_data_1_payload_A_reg[11]_i_1_n_3 ;
  wire \out_data_1_payload_A_reg[15]_i_1_n_0 ;
  wire \out_data_1_payload_A_reg[15]_i_1_n_1 ;
  wire \out_data_1_payload_A_reg[15]_i_1_n_2 ;
  wire \out_data_1_payload_A_reg[15]_i_1_n_3 ;
  wire \out_data_1_payload_A_reg[19]_i_1_n_0 ;
  wire \out_data_1_payload_A_reg[19]_i_1_n_1 ;
  wire \out_data_1_payload_A_reg[19]_i_1_n_2 ;
  wire \out_data_1_payload_A_reg[19]_i_1_n_3 ;
  wire \out_data_1_payload_A_reg[23]_i_1_n_0 ;
  wire \out_data_1_payload_A_reg[23]_i_1_n_1 ;
  wire \out_data_1_payload_A_reg[23]_i_1_n_2 ;
  wire \out_data_1_payload_A_reg[23]_i_1_n_3 ;
  wire \out_data_1_payload_A_reg[27]_i_1_n_0 ;
  wire \out_data_1_payload_A_reg[27]_i_1_n_1 ;
  wire \out_data_1_payload_A_reg[27]_i_1_n_2 ;
  wire \out_data_1_payload_A_reg[27]_i_1_n_3 ;
  wire \out_data_1_payload_A_reg[31]_i_2_n_1 ;
  wire \out_data_1_payload_A_reg[31]_i_2_n_2 ;
  wire \out_data_1_payload_A_reg[31]_i_2_n_3 ;
  wire \out_data_1_payload_A_reg[3]_i_1_n_0 ;
  wire \out_data_1_payload_A_reg[3]_i_1_n_1 ;
  wire \out_data_1_payload_A_reg[3]_i_1_n_2 ;
  wire \out_data_1_payload_A_reg[3]_i_1_n_3 ;
  wire \out_data_1_payload_A_reg[7]_i_1_n_0 ;
  wire \out_data_1_payload_A_reg[7]_i_1_n_1 ;
  wire \out_data_1_payload_A_reg[7]_i_1_n_2 ;
  wire \out_data_1_payload_A_reg[7]_i_1_n_3 ;
  wire [31:0]out_data_1_payload_B;
  wire out_data_1_sel;
  wire out_data_1_sel_rd_i_1_n_0;
  wire out_data_1_sel_wr;
  wire out_data_1_sel_wr_i_1_n_0;
  wire \out_data_1_state[0]_i_1_n_0 ;
  wire \out_data_1_state[1]_i_1_n_0 ;
  wire \out_data_1_state_reg_n_0_[0] ;
  wire [31:0]out_data_tmp_fu_75_p2;
  wire out_last_V_1_ack_in;
  wire out_last_V_1_payload_A;
  wire \out_last_V_1_payload_A[0]_i_1_n_0 ;
  wire \out_last_V_1_payload_A[0]_i_2_n_0 ;
  wire out_last_V_1_payload_B;
  wire \out_last_V_1_payload_B[0]_i_1_n_0 ;
  wire out_last_V_1_sel;
  wire out_last_V_1_sel_rd_i_1_n_0;
  wire out_last_V_1_sel_wr;
  wire out_last_V_1_sel_wr_i_1_n_0;
  wire \out_last_V_1_state[0]_i_1_n_0 ;
  wire \out_last_V_1_state[1]_i_1_n_0 ;
  wire [31:0]out_r_TDATA;
  wire [0:0]out_r_TLAST;
  wire out_r_TREADY;
  wire out_r_TVALID;
  wire p_87_in;
  wire [3:3]\NLW_out_data_1_payload_A_reg[31]_i_2_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h80)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(out_last_V_1_ack_in),
        .I1(out_data_1_ack_in),
        .I2(\ap_CS_fsm_reg_n_0_[2] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAABFFFFFFF)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(\in1_data_0_state_reg_n_0_[0] ),
        .I2(\in2_data_0_state_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state2),
        .I4(out_data_1_ack_in),
        .I5(\ap_CS_fsm_reg_n_0_[2] ),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'h4555555501111111)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_CS_fsm_state2),
        .I2(out_last_V_1_ack_in),
        .I3(\ap_CS_fsm_reg_n_0_[2] ),
        .I4(out_data_1_ack_in),
        .I5(p_87_in),
        .O(ap_NS_fsm[2]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(\ap_CS_fsm_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \in1_data_0_payload_A[31]_i_1 
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(in1_data_0_ack_in),
        .I2(in1_data_0_sel_wr),
        .O(\in1_data_0_payload_A[31]_i_1_n_0 ));
  FDRE \in1_data_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[0]),
        .Q(in1_data_0_payload_A[0]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[10]),
        .Q(in1_data_0_payload_A[10]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[11]),
        .Q(in1_data_0_payload_A[11]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[12]),
        .Q(in1_data_0_payload_A[12]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[13]),
        .Q(in1_data_0_payload_A[13]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[14]),
        .Q(in1_data_0_payload_A[14]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[15]),
        .Q(in1_data_0_payload_A[15]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[16]),
        .Q(in1_data_0_payload_A[16]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[17]),
        .Q(in1_data_0_payload_A[17]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[18]),
        .Q(in1_data_0_payload_A[18]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[19]),
        .Q(in1_data_0_payload_A[19]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[1]),
        .Q(in1_data_0_payload_A[1]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[20]),
        .Q(in1_data_0_payload_A[20]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[21]),
        .Q(in1_data_0_payload_A[21]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[22]),
        .Q(in1_data_0_payload_A[22]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[23]),
        .Q(in1_data_0_payload_A[23]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[24]),
        .Q(in1_data_0_payload_A[24]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[25]),
        .Q(in1_data_0_payload_A[25]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[26]),
        .Q(in1_data_0_payload_A[26]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[27]),
        .Q(in1_data_0_payload_A[27]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[28]),
        .Q(in1_data_0_payload_A[28]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[29]),
        .Q(in1_data_0_payload_A[29]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[2]),
        .Q(in1_data_0_payload_A[2]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[30]),
        .Q(in1_data_0_payload_A[30]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[31]),
        .Q(in1_data_0_payload_A[31]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[3]),
        .Q(in1_data_0_payload_A[3]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[4]),
        .Q(in1_data_0_payload_A[4]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[5]),
        .Q(in1_data_0_payload_A[5]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[6]),
        .Q(in1_data_0_payload_A[6]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[7]),
        .Q(in1_data_0_payload_A[7]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[8]),
        .Q(in1_data_0_payload_A[8]),
        .R(1'b0));
  FDRE \in1_data_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\in1_data_0_payload_A[31]_i_1_n_0 ),
        .D(in1_TDATA[9]),
        .Q(in1_data_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD0)) 
    \in1_data_0_payload_B[31]_i_1 
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(in1_data_0_ack_in),
        .I2(in1_data_0_sel_wr),
        .O(in1_data_0_load_B));
  FDRE \in1_data_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[0]),
        .Q(in1_data_0_payload_B[0]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[10]),
        .Q(in1_data_0_payload_B[10]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[11]),
        .Q(in1_data_0_payload_B[11]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[12]),
        .Q(in1_data_0_payload_B[12]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[13]),
        .Q(in1_data_0_payload_B[13]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[14]),
        .Q(in1_data_0_payload_B[14]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[15]),
        .Q(in1_data_0_payload_B[15]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[16]),
        .Q(in1_data_0_payload_B[16]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[17]),
        .Q(in1_data_0_payload_B[17]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[18]),
        .Q(in1_data_0_payload_B[18]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[19]),
        .Q(in1_data_0_payload_B[19]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[1]),
        .Q(in1_data_0_payload_B[1]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[20]),
        .Q(in1_data_0_payload_B[20]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[21]),
        .Q(in1_data_0_payload_B[21]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[22]),
        .Q(in1_data_0_payload_B[22]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[23]),
        .Q(in1_data_0_payload_B[23]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[24]),
        .Q(in1_data_0_payload_B[24]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[25]),
        .Q(in1_data_0_payload_B[25]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[26]),
        .Q(in1_data_0_payload_B[26]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[27]),
        .Q(in1_data_0_payload_B[27]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[28]),
        .Q(in1_data_0_payload_B[28]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[29]),
        .Q(in1_data_0_payload_B[29]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[2]),
        .Q(in1_data_0_payload_B[2]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[30]),
        .Q(in1_data_0_payload_B[30]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[31]),
        .Q(in1_data_0_payload_B[31]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[3]),
        .Q(in1_data_0_payload_B[3]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[4]),
        .Q(in1_data_0_payload_B[4]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[5]),
        .Q(in1_data_0_payload_B[5]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[6]),
        .Q(in1_data_0_payload_B[6]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[7]),
        .Q(in1_data_0_payload_B[7]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[8]),
        .Q(in1_data_0_payload_B[8]),
        .R(1'b0));
  FDRE \in1_data_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(in1_data_0_load_B),
        .D(in1_TDATA[9]),
        .Q(in1_data_0_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    in1_data_0_sel_rd_i_1
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(\in2_data_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(out_data_1_ack_in),
        .I4(in1_data_0_sel),
        .O(in1_data_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in1_data_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in1_data_0_sel_rd_i_1_n_0),
        .Q(in1_data_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    in1_data_0_sel_wr_i_1
       (.I0(in1_TVALID),
        .I1(in1_data_0_ack_in),
        .I2(in1_data_0_sel_wr),
        .O(in1_data_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in1_data_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in1_data_0_sel_wr_i_1_n_0),
        .Q(in1_data_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \in1_data_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_87_in),
        .I2(in1_TVALID),
        .I3(in1_data_0_ack_in),
        .I4(\in1_data_0_state_reg_n_0_[0] ),
        .O(\in1_data_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC000FFFFEAAAFFFF)) 
    \in1_data_0_state[1]_i_1 
       (.I0(in1_data_0_ack_in),
        .I1(out_data_1_ack_in),
        .I2(ap_CS_fsm_state2),
        .I3(\in2_data_0_state_reg_n_0_[0] ),
        .I4(\in1_data_0_state_reg_n_0_[0] ),
        .I5(in1_TVALID),
        .O(\in1_data_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in1_data_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in1_data_0_state[0]_i_1_n_0 ),
        .Q(\in1_data_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in1_data_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in1_data_0_state[1]_i_1_n_0 ),
        .Q(in1_data_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hFFAE00A2)) 
    \in1_last_V_0_payload_A[0]_i_1 
       (.I0(in1_TLAST),
        .I1(\in1_last_V_0_state_reg_n_0_[0] ),
        .I2(in1_TREADY),
        .I3(in1_last_V_0_sel_wr),
        .I4(in1_last_V_0_payload_A),
        .O(\in1_last_V_0_payload_A[0]_i_1_n_0 ));
  FDRE \in1_last_V_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in1_last_V_0_payload_A[0]_i_1_n_0 ),
        .Q(in1_last_V_0_payload_A),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBBFB8808)) 
    \in1_last_V_0_payload_B[0]_i_1 
       (.I0(in1_TLAST),
        .I1(in1_last_V_0_sel_wr),
        .I2(\in1_last_V_0_state_reg_n_0_[0] ),
        .I3(in1_TREADY),
        .I4(in1_last_V_0_payload_B),
        .O(\in1_last_V_0_payload_B[0]_i_1_n_0 ));
  FDRE \in1_last_V_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in1_last_V_0_payload_B[0]_i_1_n_0 ),
        .Q(in1_last_V_0_payload_B),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    in1_last_V_0_sel_rd_i_1
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(\in2_data_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(out_data_1_ack_in),
        .I4(\in1_last_V_0_state_reg_n_0_[0] ),
        .I5(in1_last_V_0_sel),
        .O(in1_last_V_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in1_last_V_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in1_last_V_0_sel_rd_i_1_n_0),
        .Q(in1_last_V_0_sel),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    in1_last_V_0_sel_wr_i_1
       (.I0(in1_TVALID),
        .I1(in1_TREADY),
        .I2(in1_last_V_0_sel_wr),
        .O(in1_last_V_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in1_last_V_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in1_last_V_0_sel_wr_i_1_n_0),
        .Q(in1_last_V_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \in1_last_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_87_in),
        .I2(in1_TVALID),
        .I3(in1_TREADY),
        .I4(\in1_last_V_0_state_reg_n_0_[0] ),
        .O(\in1_last_V_0_state[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \in1_last_V_0_state[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF3FB)) 
    \in1_last_V_0_state[1]_i_2 
       (.I0(in1_TREADY),
        .I1(\in1_last_V_0_state_reg_n_0_[0] ),
        .I2(p_87_in),
        .I3(in1_TVALID),
        .O(\in1_last_V_0_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \in1_last_V_0_state[1]_i_3 
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(\in2_data_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(out_data_1_ack_in),
        .O(p_87_in));
  FDRE #(
    .INIT(1'b0)) 
    \in1_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in1_last_V_0_state[0]_i_1_n_0 ),
        .Q(\in1_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in1_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in1_last_V_0_state[1]_i_2_n_0 ),
        .Q(in1_TREADY),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h0D)) 
    \in2_data_0_payload_A[31]_i_1 
       (.I0(\in2_data_0_state_reg_n_0_[0] ),
        .I1(in2_data_0_ack_in),
        .I2(in2_data_0_sel_wr),
        .O(\in2_data_0_payload_A[31]_i_1_n_0 ));
  FDRE \in2_data_0_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[0]),
        .Q(in2_data_0_payload_A[0]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[10]),
        .Q(in2_data_0_payload_A[10]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[11]),
        .Q(in2_data_0_payload_A[11]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[12]),
        .Q(in2_data_0_payload_A[12]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[13]),
        .Q(in2_data_0_payload_A[13]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[14]),
        .Q(in2_data_0_payload_A[14]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[15]),
        .Q(in2_data_0_payload_A[15]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[16]),
        .Q(in2_data_0_payload_A[16]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[17]),
        .Q(in2_data_0_payload_A[17]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[18]),
        .Q(in2_data_0_payload_A[18]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[19]),
        .Q(in2_data_0_payload_A[19]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[1]),
        .Q(in2_data_0_payload_A[1]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[20]),
        .Q(in2_data_0_payload_A[20]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[21]),
        .Q(in2_data_0_payload_A[21]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[22]),
        .Q(in2_data_0_payload_A[22]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[23]),
        .Q(in2_data_0_payload_A[23]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[24]),
        .Q(in2_data_0_payload_A[24]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[25]),
        .Q(in2_data_0_payload_A[25]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[26]),
        .Q(in2_data_0_payload_A[26]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[27]),
        .Q(in2_data_0_payload_A[27]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[28]),
        .Q(in2_data_0_payload_A[28]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[29]),
        .Q(in2_data_0_payload_A[29]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[2]),
        .Q(in2_data_0_payload_A[2]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[30]),
        .Q(in2_data_0_payload_A[30]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[31]),
        .Q(in2_data_0_payload_A[31]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[3]),
        .Q(in2_data_0_payload_A[3]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[4]),
        .Q(in2_data_0_payload_A[4]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[5]),
        .Q(in2_data_0_payload_A[5]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[6]),
        .Q(in2_data_0_payload_A[6]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[7]),
        .Q(in2_data_0_payload_A[7]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[8]),
        .Q(in2_data_0_payload_A[8]),
        .R(1'b0));
  FDRE \in2_data_0_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\in2_data_0_payload_A[31]_i_1_n_0 ),
        .D(in2_TDATA[9]),
        .Q(in2_data_0_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \in2_data_0_payload_B[31]_i_1 
       (.I0(in2_data_0_sel_wr),
        .I1(\in2_data_0_state_reg_n_0_[0] ),
        .I2(in2_data_0_ack_in),
        .O(in2_data_0_load_B));
  FDRE \in2_data_0_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[0]),
        .Q(in2_data_0_payload_B[0]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[10]),
        .Q(in2_data_0_payload_B[10]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[11]),
        .Q(in2_data_0_payload_B[11]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[12]),
        .Q(in2_data_0_payload_B[12]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[13]),
        .Q(in2_data_0_payload_B[13]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[14]),
        .Q(in2_data_0_payload_B[14]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[15]),
        .Q(in2_data_0_payload_B[15]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[16]),
        .Q(in2_data_0_payload_B[16]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[17]),
        .Q(in2_data_0_payload_B[17]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[18]),
        .Q(in2_data_0_payload_B[18]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[19]),
        .Q(in2_data_0_payload_B[19]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[1]),
        .Q(in2_data_0_payload_B[1]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[20]),
        .Q(in2_data_0_payload_B[20]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[21]),
        .Q(in2_data_0_payload_B[21]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[22]),
        .Q(in2_data_0_payload_B[22]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[23]),
        .Q(in2_data_0_payload_B[23]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[24]),
        .Q(in2_data_0_payload_B[24]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[25]),
        .Q(in2_data_0_payload_B[25]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[26]),
        .Q(in2_data_0_payload_B[26]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[27]),
        .Q(in2_data_0_payload_B[27]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[28]),
        .Q(in2_data_0_payload_B[28]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[29]),
        .Q(in2_data_0_payload_B[29]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[2]),
        .Q(in2_data_0_payload_B[2]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[30]),
        .Q(in2_data_0_payload_B[30]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[31]),
        .Q(in2_data_0_payload_B[31]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[3]),
        .Q(in2_data_0_payload_B[3]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[4]),
        .Q(in2_data_0_payload_B[4]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[5]),
        .Q(in2_data_0_payload_B[5]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[6]),
        .Q(in2_data_0_payload_B[6]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[7]),
        .Q(in2_data_0_payload_B[7]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[8]),
        .Q(in2_data_0_payload_B[8]),
        .R(1'b0));
  FDRE \in2_data_0_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(in2_data_0_load_B),
        .D(in2_TDATA[9]),
        .Q(in2_data_0_payload_B[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    in2_data_0_sel_rd_i_1
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(\in2_data_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(out_data_1_ack_in),
        .I4(in2_data_0_sel),
        .O(in2_data_0_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in2_data_0_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in2_data_0_sel_rd_i_1_n_0),
        .Q(in2_data_0_sel),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'h78)) 
    in2_data_0_sel_wr_i_1
       (.I0(in2_TVALID),
        .I1(in2_data_0_ack_in),
        .I2(in2_data_0_sel_wr),
        .O(in2_data_0_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    in2_data_0_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(in2_data_0_sel_wr_i_1_n_0),
        .Q(in2_data_0_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \in2_data_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_87_in),
        .I2(in2_TVALID),
        .I3(in2_data_0_ack_in),
        .I4(\in2_data_0_state_reg_n_0_[0] ),
        .O(\in2_data_0_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0FF00FFEAFFAAFF)) 
    \in2_data_0_state[1]_i_1 
       (.I0(in2_data_0_ack_in),
        .I1(out_data_1_ack_in),
        .I2(ap_CS_fsm_state2),
        .I3(\in2_data_0_state_reg_n_0_[0] ),
        .I4(\in1_data_0_state_reg_n_0_[0] ),
        .I5(in2_TVALID),
        .O(\in2_data_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in2_data_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in2_data_0_state[0]_i_1_n_0 ),
        .Q(\in2_data_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in2_data_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in2_data_0_state[1]_i_1_n_0 ),
        .Q(in2_data_0_ack_in),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \in2_last_V_0_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(p_87_in),
        .I2(in2_TVALID),
        .I3(in2_TREADY),
        .I4(\in2_last_V_0_state_reg_n_0_[0] ),
        .O(\in2_last_V_0_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF3FB)) 
    \in2_last_V_0_state[1]_i_1 
       (.I0(in2_TREADY),
        .I1(\in2_last_V_0_state_reg_n_0_[0] ),
        .I2(p_87_in),
        .I3(in2_TVALID),
        .O(\in2_last_V_0_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in2_last_V_0_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in2_last_V_0_state[0]_i_1_n_0 ),
        .Q(\in2_last_V_0_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \in2_last_V_0_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\in2_last_V_0_state[1]_i_1_n_0 ),
        .Q(in2_TREADY),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[11]_i_2 
       (.I0(in1_data_0_payload_B[11]),
        .I1(in1_data_0_payload_A[11]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[11]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[11]_i_3 
       (.I0(in1_data_0_payload_B[10]),
        .I1(in1_data_0_payload_A[10]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[10]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[11]_i_4 
       (.I0(in1_data_0_payload_B[9]),
        .I1(in1_data_0_payload_A[9]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[9]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[11]_i_5 
       (.I0(in1_data_0_payload_B[8]),
        .I1(in1_data_0_payload_A[8]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[8]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[11]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[11]),
        .I2(in1_data_0_payload_B[11]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[11]),
        .I5(in2_data_0_payload_B[11]),
        .O(\out_data_1_payload_A[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[11]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[10]),
        .I2(in1_data_0_payload_B[10]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[10]),
        .I5(in2_data_0_payload_B[10]),
        .O(\out_data_1_payload_A[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[11]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[9]),
        .I2(in1_data_0_payload_B[9]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[9]),
        .I5(in2_data_0_payload_B[9]),
        .O(\out_data_1_payload_A[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[11]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[8]),
        .I2(in1_data_0_payload_B[8]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[8]),
        .I5(in2_data_0_payload_B[8]),
        .O(\out_data_1_payload_A[11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[15]_i_2 
       (.I0(in1_data_0_payload_B[15]),
        .I1(in1_data_0_payload_A[15]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[15]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[15]_i_3 
       (.I0(in1_data_0_payload_B[14]),
        .I1(in1_data_0_payload_A[14]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[14]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[15]_i_4 
       (.I0(in1_data_0_payload_B[13]),
        .I1(in1_data_0_payload_A[13]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[13]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[15]_i_5 
       (.I0(in1_data_0_payload_B[12]),
        .I1(in1_data_0_payload_A[12]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[12]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[15]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[15]),
        .I2(in1_data_0_payload_B[15]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[15]),
        .I5(in2_data_0_payload_B[15]),
        .O(\out_data_1_payload_A[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[15]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[14]),
        .I2(in1_data_0_payload_B[14]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[14]),
        .I5(in2_data_0_payload_B[14]),
        .O(\out_data_1_payload_A[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[15]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[13]),
        .I2(in1_data_0_payload_B[13]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[13]),
        .I5(in2_data_0_payload_B[13]),
        .O(\out_data_1_payload_A[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[15]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[12]),
        .I2(in1_data_0_payload_B[12]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[12]),
        .I5(in2_data_0_payload_B[12]),
        .O(\out_data_1_payload_A[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[19]_i_2 
       (.I0(in1_data_0_payload_B[19]),
        .I1(in1_data_0_payload_A[19]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[19]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[19]_i_3 
       (.I0(in1_data_0_payload_B[18]),
        .I1(in1_data_0_payload_A[18]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[19]_i_4 
       (.I0(in1_data_0_payload_B[17]),
        .I1(in1_data_0_payload_A[17]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[17]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[19]_i_5 
       (.I0(in1_data_0_payload_B[16]),
        .I1(in1_data_0_payload_A[16]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[16]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[19]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[19]),
        .I2(in1_data_0_payload_B[19]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[19]),
        .I5(in2_data_0_payload_B[19]),
        .O(\out_data_1_payload_A[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[19]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[18]),
        .I2(in1_data_0_payload_B[18]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[18]),
        .I5(in2_data_0_payload_B[18]),
        .O(\out_data_1_payload_A[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[19]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[17]),
        .I2(in1_data_0_payload_B[17]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[17]),
        .I5(in2_data_0_payload_B[17]),
        .O(\out_data_1_payload_A[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[19]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[16]),
        .I2(in1_data_0_payload_B[16]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[16]),
        .I5(in2_data_0_payload_B[16]),
        .O(\out_data_1_payload_A[19]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[23]_i_2 
       (.I0(in1_data_0_payload_B[23]),
        .I1(in1_data_0_payload_A[23]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[23]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[23]_i_3 
       (.I0(in1_data_0_payload_B[22]),
        .I1(in1_data_0_payload_A[22]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[22]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[23]_i_4 
       (.I0(in1_data_0_payload_B[21]),
        .I1(in1_data_0_payload_A[21]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[21]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[23]_i_5 
       (.I0(in1_data_0_payload_B[20]),
        .I1(in1_data_0_payload_A[20]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[20]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[23]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[23]),
        .I2(in1_data_0_payload_B[23]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[23]),
        .I5(in2_data_0_payload_B[23]),
        .O(\out_data_1_payload_A[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[23]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[22]),
        .I2(in1_data_0_payload_B[22]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[22]),
        .I5(in2_data_0_payload_B[22]),
        .O(\out_data_1_payload_A[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[23]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[21]),
        .I2(in1_data_0_payload_B[21]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[21]),
        .I5(in2_data_0_payload_B[21]),
        .O(\out_data_1_payload_A[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[23]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[20]),
        .I2(in1_data_0_payload_B[20]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[20]),
        .I5(in2_data_0_payload_B[20]),
        .O(\out_data_1_payload_A[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[27]_i_2 
       (.I0(in1_data_0_payload_B[27]),
        .I1(in1_data_0_payload_A[27]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[27]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[27]_i_3 
       (.I0(in1_data_0_payload_B[26]),
        .I1(in1_data_0_payload_A[26]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[26]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[27]_i_4 
       (.I0(in1_data_0_payload_B[25]),
        .I1(in1_data_0_payload_A[25]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[25]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[27]_i_5 
       (.I0(in1_data_0_payload_B[24]),
        .I1(in1_data_0_payload_A[24]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[24]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[27]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[27]),
        .I2(in1_data_0_payload_B[27]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[27]),
        .I5(in2_data_0_payload_B[27]),
        .O(\out_data_1_payload_A[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[27]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[26]),
        .I2(in1_data_0_payload_B[26]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[26]),
        .I5(in2_data_0_payload_B[26]),
        .O(\out_data_1_payload_A[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[27]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[25]),
        .I2(in1_data_0_payload_B[25]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[25]),
        .I5(in2_data_0_payload_B[25]),
        .O(\out_data_1_payload_A[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[27]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[24]),
        .I2(in1_data_0_payload_B[24]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[24]),
        .I5(in2_data_0_payload_B[24]),
        .O(\out_data_1_payload_A[27]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h0D)) 
    \out_data_1_payload_A[31]_i_1 
       (.I0(\out_data_1_state_reg_n_0_[0] ),
        .I1(out_data_1_ack_in),
        .I2(out_data_1_sel_wr),
        .O(\out_data_1_payload_A[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[31]_i_3 
       (.I0(in1_data_0_payload_B[30]),
        .I1(in1_data_0_payload_A[30]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[31]_i_4 
       (.I0(in1_data_0_payload_B[29]),
        .I1(in1_data_0_payload_A[29]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[29]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[31]_i_5 
       (.I0(in1_data_0_payload_B[28]),
        .I1(in1_data_0_payload_A[28]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[28]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[31]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[31]),
        .I2(in1_data_0_payload_B[31]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[31]),
        .I5(in2_data_0_payload_B[31]),
        .O(\out_data_1_payload_A[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[31]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[30]),
        .I2(in1_data_0_payload_B[30]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[30]),
        .I5(in2_data_0_payload_B[30]),
        .O(\out_data_1_payload_A[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[31]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[29]),
        .I2(in1_data_0_payload_B[29]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[29]),
        .I5(in2_data_0_payload_B[29]),
        .O(\out_data_1_payload_A[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[31]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[28]),
        .I2(in1_data_0_payload_B[28]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[28]),
        .I5(in2_data_0_payload_B[28]),
        .O(\out_data_1_payload_A[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[3]_i_2 
       (.I0(in1_data_0_payload_B[3]),
        .I1(in1_data_0_payload_A[3]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[3]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[3]_i_3 
       (.I0(in1_data_0_payload_B[2]),
        .I1(in1_data_0_payload_A[2]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[2]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[3]_i_4 
       (.I0(in1_data_0_payload_B[1]),
        .I1(in1_data_0_payload_A[1]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[1]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[3]_i_5 
       (.I0(in1_data_0_payload_B[0]),
        .I1(in1_data_0_payload_A[0]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[0]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[3]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[3]),
        .I2(in1_data_0_payload_B[3]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[3]),
        .I5(in2_data_0_payload_B[3]),
        .O(\out_data_1_payload_A[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[3]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[2]),
        .I2(in1_data_0_payload_B[2]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[2]),
        .I5(in2_data_0_payload_B[2]),
        .O(\out_data_1_payload_A[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[3]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[1]),
        .I2(in1_data_0_payload_B[1]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[1]),
        .I5(in2_data_0_payload_B[1]),
        .O(\out_data_1_payload_A[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[3]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[0]),
        .I2(in1_data_0_payload_B[0]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[0]),
        .I5(in2_data_0_payload_B[0]),
        .O(\out_data_1_payload_A[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[7]_i_2 
       (.I0(in1_data_0_payload_B[7]),
        .I1(in1_data_0_payload_A[7]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[7]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[7]_i_3 
       (.I0(in1_data_0_payload_B[6]),
        .I1(in1_data_0_payload_A[6]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[6]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[7]_i_4 
       (.I0(in1_data_0_payload_B[5]),
        .I1(in1_data_0_payload_A[5]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[5]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_data_1_payload_A[7]_i_5 
       (.I0(in1_data_0_payload_B[4]),
        .I1(in1_data_0_payload_A[4]),
        .I2(in1_data_0_sel),
        .O(in1_data_0_data_out[4]));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[7]_i_6 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[7]),
        .I2(in1_data_0_payload_B[7]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[7]),
        .I5(in2_data_0_payload_B[7]),
        .O(\out_data_1_payload_A[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[7]_i_7 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[6]),
        .I2(in1_data_0_payload_B[6]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[6]),
        .I5(in2_data_0_payload_B[6]),
        .O(\out_data_1_payload_A[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[7]_i_8 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[5]),
        .I2(in1_data_0_payload_B[5]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[5]),
        .I5(in2_data_0_payload_B[5]),
        .O(\out_data_1_payload_A[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hE4E4E41B1BE41B1B)) 
    \out_data_1_payload_A[7]_i_9 
       (.I0(in1_data_0_sel),
        .I1(in1_data_0_payload_A[4]),
        .I2(in1_data_0_payload_B[4]),
        .I3(in2_data_0_sel),
        .I4(in2_data_0_payload_A[4]),
        .I5(in2_data_0_payload_B[4]),
        .O(\out_data_1_payload_A[7]_i_9_n_0 ));
  FDRE \out_data_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[0]),
        .Q(out_data_1_payload_A[0]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[10] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[10]),
        .Q(out_data_1_payload_A[10]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[11] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[11]),
        .Q(out_data_1_payload_A[11]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[11]_i_1 
       (.CI(\out_data_1_payload_A_reg[7]_i_1_n_0 ),
        .CO({\out_data_1_payload_A_reg[11]_i_1_n_0 ,\out_data_1_payload_A_reg[11]_i_1_n_1 ,\out_data_1_payload_A_reg[11]_i_1_n_2 ,\out_data_1_payload_A_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in1_data_0_data_out[11:8]),
        .O(out_data_tmp_fu_75_p2[11:8]),
        .S({\out_data_1_payload_A[11]_i_6_n_0 ,\out_data_1_payload_A[11]_i_7_n_0 ,\out_data_1_payload_A[11]_i_8_n_0 ,\out_data_1_payload_A[11]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[12] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[12]),
        .Q(out_data_1_payload_A[12]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[13] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[13]),
        .Q(out_data_1_payload_A[13]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[14] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[14]),
        .Q(out_data_1_payload_A[14]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[15] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[15]),
        .Q(out_data_1_payload_A[15]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[15]_i_1 
       (.CI(\out_data_1_payload_A_reg[11]_i_1_n_0 ),
        .CO({\out_data_1_payload_A_reg[15]_i_1_n_0 ,\out_data_1_payload_A_reg[15]_i_1_n_1 ,\out_data_1_payload_A_reg[15]_i_1_n_2 ,\out_data_1_payload_A_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in1_data_0_data_out[15:12]),
        .O(out_data_tmp_fu_75_p2[15:12]),
        .S({\out_data_1_payload_A[15]_i_6_n_0 ,\out_data_1_payload_A[15]_i_7_n_0 ,\out_data_1_payload_A[15]_i_8_n_0 ,\out_data_1_payload_A[15]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[16] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[16]),
        .Q(out_data_1_payload_A[16]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[17] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[17]),
        .Q(out_data_1_payload_A[17]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[18] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[18]),
        .Q(out_data_1_payload_A[18]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[19] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[19]),
        .Q(out_data_1_payload_A[19]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[19]_i_1 
       (.CI(\out_data_1_payload_A_reg[15]_i_1_n_0 ),
        .CO({\out_data_1_payload_A_reg[19]_i_1_n_0 ,\out_data_1_payload_A_reg[19]_i_1_n_1 ,\out_data_1_payload_A_reg[19]_i_1_n_2 ,\out_data_1_payload_A_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in1_data_0_data_out[19:16]),
        .O(out_data_tmp_fu_75_p2[19:16]),
        .S({\out_data_1_payload_A[19]_i_6_n_0 ,\out_data_1_payload_A[19]_i_7_n_0 ,\out_data_1_payload_A[19]_i_8_n_0 ,\out_data_1_payload_A[19]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[1] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[1]),
        .Q(out_data_1_payload_A[1]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[20] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[20]),
        .Q(out_data_1_payload_A[20]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[21] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[21]),
        .Q(out_data_1_payload_A[21]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[22] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[22]),
        .Q(out_data_1_payload_A[22]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[23] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[23]),
        .Q(out_data_1_payload_A[23]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[23]_i_1 
       (.CI(\out_data_1_payload_A_reg[19]_i_1_n_0 ),
        .CO({\out_data_1_payload_A_reg[23]_i_1_n_0 ,\out_data_1_payload_A_reg[23]_i_1_n_1 ,\out_data_1_payload_A_reg[23]_i_1_n_2 ,\out_data_1_payload_A_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in1_data_0_data_out[23:20]),
        .O(out_data_tmp_fu_75_p2[23:20]),
        .S({\out_data_1_payload_A[23]_i_6_n_0 ,\out_data_1_payload_A[23]_i_7_n_0 ,\out_data_1_payload_A[23]_i_8_n_0 ,\out_data_1_payload_A[23]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[24] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[24]),
        .Q(out_data_1_payload_A[24]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[25] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[25]),
        .Q(out_data_1_payload_A[25]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[26] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[26]),
        .Q(out_data_1_payload_A[26]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[27] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[27]),
        .Q(out_data_1_payload_A[27]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[27]_i_1 
       (.CI(\out_data_1_payload_A_reg[23]_i_1_n_0 ),
        .CO({\out_data_1_payload_A_reg[27]_i_1_n_0 ,\out_data_1_payload_A_reg[27]_i_1_n_1 ,\out_data_1_payload_A_reg[27]_i_1_n_2 ,\out_data_1_payload_A_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in1_data_0_data_out[27:24]),
        .O(out_data_tmp_fu_75_p2[27:24]),
        .S({\out_data_1_payload_A[27]_i_6_n_0 ,\out_data_1_payload_A[27]_i_7_n_0 ,\out_data_1_payload_A[27]_i_8_n_0 ,\out_data_1_payload_A[27]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[28] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[28]),
        .Q(out_data_1_payload_A[28]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[29] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[29]),
        .Q(out_data_1_payload_A[29]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[2] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[2]),
        .Q(out_data_1_payload_A[2]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[30] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[30]),
        .Q(out_data_1_payload_A[30]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[31] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[31]),
        .Q(out_data_1_payload_A[31]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[31]_i_2 
       (.CI(\out_data_1_payload_A_reg[27]_i_1_n_0 ),
        .CO({\NLW_out_data_1_payload_A_reg[31]_i_2_CO_UNCONNECTED [3],\out_data_1_payload_A_reg[31]_i_2_n_1 ,\out_data_1_payload_A_reg[31]_i_2_n_2 ,\out_data_1_payload_A_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in1_data_0_data_out[30:28]}),
        .O(out_data_tmp_fu_75_p2[31:28]),
        .S({\out_data_1_payload_A[31]_i_6_n_0 ,\out_data_1_payload_A[31]_i_7_n_0 ,\out_data_1_payload_A[31]_i_8_n_0 ,\out_data_1_payload_A[31]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[3] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[3]),
        .Q(out_data_1_payload_A[3]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\out_data_1_payload_A_reg[3]_i_1_n_0 ,\out_data_1_payload_A_reg[3]_i_1_n_1 ,\out_data_1_payload_A_reg[3]_i_1_n_2 ,\out_data_1_payload_A_reg[3]_i_1_n_3 }),
        .CYINIT(1'b1),
        .DI(in1_data_0_data_out[3:0]),
        .O(out_data_tmp_fu_75_p2[3:0]),
        .S({\out_data_1_payload_A[3]_i_6_n_0 ,\out_data_1_payload_A[3]_i_7_n_0 ,\out_data_1_payload_A[3]_i_8_n_0 ,\out_data_1_payload_A[3]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[4] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[4]),
        .Q(out_data_1_payload_A[4]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[5] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[5]),
        .Q(out_data_1_payload_A[5]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[6] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[6]),
        .Q(out_data_1_payload_A[6]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[7] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[7]),
        .Q(out_data_1_payload_A[7]),
        .R(1'b0));
  CARRY4 \out_data_1_payload_A_reg[7]_i_1 
       (.CI(\out_data_1_payload_A_reg[3]_i_1_n_0 ),
        .CO({\out_data_1_payload_A_reg[7]_i_1_n_0 ,\out_data_1_payload_A_reg[7]_i_1_n_1 ,\out_data_1_payload_A_reg[7]_i_1_n_2 ,\out_data_1_payload_A_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in1_data_0_data_out[7:4]),
        .O(out_data_tmp_fu_75_p2[7:4]),
        .S({\out_data_1_payload_A[7]_i_6_n_0 ,\out_data_1_payload_A[7]_i_7_n_0 ,\out_data_1_payload_A[7]_i_8_n_0 ,\out_data_1_payload_A[7]_i_9_n_0 }));
  FDRE \out_data_1_payload_A_reg[8] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[8]),
        .Q(out_data_1_payload_A[8]),
        .R(1'b0));
  FDRE \out_data_1_payload_A_reg[9] 
       (.C(ap_clk),
        .CE(\out_data_1_payload_A[31]_i_1_n_0 ),
        .D(out_data_tmp_fu_75_p2[9]),
        .Q(out_data_1_payload_A[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA2)) 
    \out_data_1_payload_B[31]_i_1 
       (.I0(out_data_1_sel_wr),
        .I1(\out_data_1_state_reg_n_0_[0] ),
        .I2(out_data_1_ack_in),
        .O(out_data_1_load_B));
  FDRE \out_data_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[0]),
        .Q(out_data_1_payload_B[0]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[10] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[10]),
        .Q(out_data_1_payload_B[10]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[11] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[11]),
        .Q(out_data_1_payload_B[11]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[12] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[12]),
        .Q(out_data_1_payload_B[12]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[13] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[13]),
        .Q(out_data_1_payload_B[13]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[14] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[14]),
        .Q(out_data_1_payload_B[14]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[15] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[15]),
        .Q(out_data_1_payload_B[15]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[16] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[16]),
        .Q(out_data_1_payload_B[16]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[17] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[17]),
        .Q(out_data_1_payload_B[17]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[18] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[18]),
        .Q(out_data_1_payload_B[18]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[19] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[19]),
        .Q(out_data_1_payload_B[19]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[1] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[1]),
        .Q(out_data_1_payload_B[1]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[20] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[20]),
        .Q(out_data_1_payload_B[20]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[21] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[21]),
        .Q(out_data_1_payload_B[21]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[22] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[22]),
        .Q(out_data_1_payload_B[22]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[23] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[23]),
        .Q(out_data_1_payload_B[23]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[24] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[24]),
        .Q(out_data_1_payload_B[24]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[25] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[25]),
        .Q(out_data_1_payload_B[25]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[26] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[26]),
        .Q(out_data_1_payload_B[26]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[27] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[27]),
        .Q(out_data_1_payload_B[27]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[28] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[28]),
        .Q(out_data_1_payload_B[28]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[29] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[29]),
        .Q(out_data_1_payload_B[29]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[2] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[2]),
        .Q(out_data_1_payload_B[2]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[30] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[30]),
        .Q(out_data_1_payload_B[30]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[31] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[31]),
        .Q(out_data_1_payload_B[31]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[3] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[3]),
        .Q(out_data_1_payload_B[3]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[4] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[4]),
        .Q(out_data_1_payload_B[4]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[5] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[5]),
        .Q(out_data_1_payload_B[5]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[6] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[6]),
        .Q(out_data_1_payload_B[6]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[7] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[7]),
        .Q(out_data_1_payload_B[7]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[8] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[8]),
        .Q(out_data_1_payload_B[8]),
        .R(1'b0));
  FDRE \out_data_1_payload_B_reg[9] 
       (.C(ap_clk),
        .CE(out_data_1_load_B),
        .D(out_data_tmp_fu_75_p2[9]),
        .Q(out_data_1_payload_B[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    out_data_1_sel_rd_i_1
       (.I0(out_r_TREADY),
        .I1(\out_data_1_state_reg_n_0_[0] ),
        .I2(out_data_1_sel),
        .O(out_data_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_data_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_data_1_sel_rd_i_1_n_0),
        .Q(out_data_1_sel),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    out_data_1_sel_wr_i_1
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(\in2_data_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(out_data_1_ack_in),
        .I4(out_data_1_sel_wr),
        .O(out_data_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_data_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_data_1_sel_wr_i_1_n_0),
        .Q(out_data_1_sel_wr),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \out_data_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(out_r_TREADY),
        .I2(p_87_in),
        .I3(out_data_1_ack_in),
        .I4(\out_data_1_state_reg_n_0_[0] ),
        .O(\out_data_1_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF3FBFBFBFBFBFBFB)) 
    \out_data_1_state[1]_i_1 
       (.I0(out_data_1_ack_in),
        .I1(\out_data_1_state_reg_n_0_[0] ),
        .I2(out_r_TREADY),
        .I3(\in1_data_0_state_reg_n_0_[0] ),
        .I4(\in2_data_0_state_reg_n_0_[0] ),
        .I5(ap_CS_fsm_state2),
        .O(\out_data_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_data_1_state[0]_i_1_n_0 ),
        .Q(\out_data_1_state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_data_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_data_1_state[1]_i_1_n_0 ),
        .Q(out_data_1_ack_in),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \out_last_V_1_payload_A[0]_i_1 
       (.I0(in1_last_V_0_payload_B),
        .I1(in1_last_V_0_sel),
        .I2(in1_last_V_0_payload_A),
        .I3(\out_last_V_1_payload_A[0]_i_2_n_0 ),
        .I4(out_last_V_1_sel_wr),
        .I5(out_last_V_1_payload_A),
        .O(\out_last_V_1_payload_A[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_last_V_1_payload_A[0]_i_2 
       (.I0(out_r_TVALID),
        .I1(out_last_V_1_ack_in),
        .O(\out_last_V_1_payload_A[0]_i_2_n_0 ));
  FDRE \out_last_V_1_payload_A_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_last_V_1_payload_A[0]_i_1_n_0 ),
        .Q(out_last_V_1_payload_A),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFB8FF0000B800)) 
    \out_last_V_1_payload_B[0]_i_1 
       (.I0(in1_last_V_0_payload_B),
        .I1(in1_last_V_0_sel),
        .I2(in1_last_V_0_payload_A),
        .I3(out_last_V_1_sel_wr),
        .I4(\out_last_V_1_payload_A[0]_i_2_n_0 ),
        .I5(out_last_V_1_payload_B),
        .O(\out_last_V_1_payload_B[0]_i_1_n_0 ));
  FDRE \out_last_V_1_payload_B_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_last_V_1_payload_B[0]_i_1_n_0 ),
        .Q(out_last_V_1_payload_B),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    out_last_V_1_sel_rd_i_1
       (.I0(out_r_TREADY),
        .I1(out_r_TVALID),
        .I2(out_last_V_1_sel),
        .O(out_last_V_1_sel_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_last_V_1_sel_rd_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_last_V_1_sel_rd_i_1_n_0),
        .Q(out_last_V_1_sel),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    out_last_V_1_sel_wr_i_1
       (.I0(\in1_data_0_state_reg_n_0_[0] ),
        .I1(\in2_data_0_state_reg_n_0_[0] ),
        .I2(ap_CS_fsm_state2),
        .I3(out_data_1_ack_in),
        .I4(out_last_V_1_ack_in),
        .I5(out_last_V_1_sel_wr),
        .O(out_last_V_1_sel_wr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    out_last_V_1_sel_wr_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(out_last_V_1_sel_wr_i_1_n_0),
        .Q(out_last_V_1_sel_wr),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA2AAA000)) 
    \out_last_V_1_state[0]_i_1 
       (.I0(ap_rst_n),
        .I1(out_r_TREADY),
        .I2(p_87_in),
        .I3(out_last_V_1_ack_in),
        .I4(out_r_TVALID),
        .O(\out_last_V_1_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF3FB)) 
    \out_last_V_1_state[1]_i_1 
       (.I0(out_last_V_1_ack_in),
        .I1(out_r_TVALID),
        .I2(out_r_TREADY),
        .I3(p_87_in),
        .O(\out_last_V_1_state[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_last_V_1_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_last_V_1_state[0]_i_1_n_0 ),
        .Q(out_r_TVALID),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_last_V_1_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\out_last_V_1_state[1]_i_1_n_0 ),
        .Q(out_last_V_1_ack_in),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[0]_INST_0 
       (.I0(out_data_1_payload_B[0]),
        .I1(out_data_1_payload_A[0]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[10]_INST_0 
       (.I0(out_data_1_payload_B[10]),
        .I1(out_data_1_payload_A[10]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[11]_INST_0 
       (.I0(out_data_1_payload_B[11]),
        .I1(out_data_1_payload_A[11]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[12]_INST_0 
       (.I0(out_data_1_payload_B[12]),
        .I1(out_data_1_payload_A[12]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[13]_INST_0 
       (.I0(out_data_1_payload_B[13]),
        .I1(out_data_1_payload_A[13]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[14]_INST_0 
       (.I0(out_data_1_payload_B[14]),
        .I1(out_data_1_payload_A[14]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[15]_INST_0 
       (.I0(out_data_1_payload_B[15]),
        .I1(out_data_1_payload_A[15]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[16]_INST_0 
       (.I0(out_data_1_payload_B[16]),
        .I1(out_data_1_payload_A[16]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[17]_INST_0 
       (.I0(out_data_1_payload_B[17]),
        .I1(out_data_1_payload_A[17]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[18]_INST_0 
       (.I0(out_data_1_payload_B[18]),
        .I1(out_data_1_payload_A[18]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[19]_INST_0 
       (.I0(out_data_1_payload_B[19]),
        .I1(out_data_1_payload_A[19]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[19]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[1]_INST_0 
       (.I0(out_data_1_payload_B[1]),
        .I1(out_data_1_payload_A[1]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[20]_INST_0 
       (.I0(out_data_1_payload_B[20]),
        .I1(out_data_1_payload_A[20]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[21]_INST_0 
       (.I0(out_data_1_payload_B[21]),
        .I1(out_data_1_payload_A[21]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[22]_INST_0 
       (.I0(out_data_1_payload_B[22]),
        .I1(out_data_1_payload_A[22]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[23]_INST_0 
       (.I0(out_data_1_payload_B[23]),
        .I1(out_data_1_payload_A[23]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[24]_INST_0 
       (.I0(out_data_1_payload_B[24]),
        .I1(out_data_1_payload_A[24]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[25]_INST_0 
       (.I0(out_data_1_payload_B[25]),
        .I1(out_data_1_payload_A[25]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[26]_INST_0 
       (.I0(out_data_1_payload_B[26]),
        .I1(out_data_1_payload_A[26]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[27]_INST_0 
       (.I0(out_data_1_payload_B[27]),
        .I1(out_data_1_payload_A[27]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[28]_INST_0 
       (.I0(out_data_1_payload_B[28]),
        .I1(out_data_1_payload_A[28]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[28]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[29]_INST_0 
       (.I0(out_data_1_payload_B[29]),
        .I1(out_data_1_payload_A[29]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[2]_INST_0 
       (.I0(out_data_1_payload_B[2]),
        .I1(out_data_1_payload_A[2]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[30]_INST_0 
       (.I0(out_data_1_payload_B[30]),
        .I1(out_data_1_payload_A[30]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[30]));
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[31]_INST_0 
       (.I0(out_data_1_payload_B[31]),
        .I1(out_data_1_payload_A[31]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[31]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[3]_INST_0 
       (.I0(out_data_1_payload_B[3]),
        .I1(out_data_1_payload_A[3]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[4]_INST_0 
       (.I0(out_data_1_payload_B[4]),
        .I1(out_data_1_payload_A[4]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[5]_INST_0 
       (.I0(out_data_1_payload_B[5]),
        .I1(out_data_1_payload_A[5]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[6]_INST_0 
       (.I0(out_data_1_payload_B[6]),
        .I1(out_data_1_payload_A[6]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[7]_INST_0 
       (.I0(out_data_1_payload_B[7]),
        .I1(out_data_1_payload_A[7]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[8]_INST_0 
       (.I0(out_data_1_payload_B[8]),
        .I1(out_data_1_payload_A[8]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \out_r_TDATA[9]_INST_0 
       (.I0(out_data_1_payload_B[9]),
        .I1(out_data_1_payload_A[9]),
        .I2(out_data_1_sel),
        .O(out_r_TDATA[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \out_r_TLAST[0]_INST_0 
       (.I0(out_last_V_1_payload_B),
        .I1(out_last_V_1_sel),
        .I2(out_last_V_1_payload_A),
        .O(out_r_TLAST));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
