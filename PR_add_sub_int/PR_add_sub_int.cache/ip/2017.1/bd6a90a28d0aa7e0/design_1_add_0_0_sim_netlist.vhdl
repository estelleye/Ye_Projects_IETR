-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Mon Jun 17 10:19:04 2019
-- Host        : pc-ietr65 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_add_0_0_sim_netlist.vhdl
-- Design      : design_1_add_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in1_TVALID : in STD_LOGIC;
    in1_TREADY : out STD_LOGIC;
    in1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in2_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in2_TVALID : in STD_LOGIC;
    in2_TREADY : out STD_LOGIC;
    in2_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_r_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_r_TVALID : out STD_LOGIC;
    out_r_TREADY : in STD_LOGIC;
    out_r_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add is
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[2]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ap_rst_n_inv : STD_LOGIC;
  signal \^in1_tready\ : STD_LOGIC;
  signal in1_data_0_ack_in : STD_LOGIC;
  signal in1_data_0_load_B : STD_LOGIC;
  signal in1_data_0_payload_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \in1_data_0_payload_A[31]_i_1_n_0\ : STD_LOGIC;
  signal in1_data_0_payload_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in1_data_0_sel : STD_LOGIC;
  signal in1_data_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal in1_data_0_sel_wr : STD_LOGIC;
  signal in1_data_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \in1_data_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \in1_data_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \in1_data_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal in1_last_V_0_payload_A : STD_LOGIC;
  signal \in1_last_V_0_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal in1_last_V_0_payload_B : STD_LOGIC;
  signal \in1_last_V_0_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal in1_last_V_0_sel : STD_LOGIC;
  signal in1_last_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal in1_last_V_0_sel_wr : STD_LOGIC;
  signal in1_last_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \in1_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \in1_last_V_0_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \in1_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^in2_tready\ : STD_LOGIC;
  signal in2_data_0_ack_in : STD_LOGIC;
  signal in2_data_0_data_out : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal in2_data_0_load_B : STD_LOGIC;
  signal in2_data_0_payload_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \in2_data_0_payload_A[31]_i_1_n_0\ : STD_LOGIC;
  signal in2_data_0_payload_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal in2_data_0_sel : STD_LOGIC;
  signal in2_data_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal in2_data_0_sel_wr : STD_LOGIC;
  signal in2_data_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \in2_data_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \in2_data_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \in2_data_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \in2_last_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \in2_last_V_0_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \in2_last_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal out_data_1_ack_in : STD_LOGIC;
  signal out_data_1_load_B : STD_LOGIC;
  signal out_data_1_payload_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \out_data_1_payload_A[11]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[11]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[11]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[11]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[15]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[15]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[15]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[15]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[19]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[19]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[19]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[19]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[23]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[23]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[23]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[23]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[27]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[27]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[27]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[27]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[31]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[31]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[31]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[31]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[31]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[3]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[3]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[3]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[3]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[7]_i_6_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[7]_i_7_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[7]_i_8_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A[7]_i_9_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[31]_i_2_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \out_data_1_payload_A_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal out_data_1_payload_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal out_data_1_sel : STD_LOGIC;
  signal out_data_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal out_data_1_sel_wr : STD_LOGIC;
  signal out_data_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \out_data_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \out_data_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal out_data_tmp_fu_75_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal out_last_V_1_ack_in : STD_LOGIC;
  signal out_last_V_1_payload_A : STD_LOGIC;
  signal \out_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_last_V_1_payload_A[0]_i_2_n_0\ : STD_LOGIC;
  signal out_last_V_1_payload_B : STD_LOGIC;
  signal \out_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal out_last_V_1_sel : STD_LOGIC;
  signal out_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal out_last_V_1_sel_wr : STD_LOGIC;
  signal out_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \out_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \out_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^out_r_tvalid\ : STD_LOGIC;
  signal p_87_in : STD_LOGIC;
  signal \NLW_out_data_1_payload_A_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of in1_last_V_0_sel_wr_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \in1_last_V_0_state[1]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \in1_last_V_0_state[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of in2_data_0_sel_rd_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of out_data_1_sel_rd_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \out_last_V_1_payload_A[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of out_last_V_1_sel_rd_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_last_V_1_state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \out_last_V_1_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \out_r_TDATA[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \out_r_TDATA[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_r_TDATA[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \out_r_TDATA[12]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_r_TDATA[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \out_r_TDATA[14]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out_r_TDATA[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \out_r_TDATA[16]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_r_TDATA[17]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \out_r_TDATA[18]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \out_r_TDATA[19]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \out_r_TDATA[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \out_r_TDATA[20]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out_r_TDATA[21]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \out_r_TDATA[22]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \out_r_TDATA[23]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \out_r_TDATA[24]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \out_r_TDATA[25]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \out_r_TDATA[26]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \out_r_TDATA[27]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \out_r_TDATA[28]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_r_TDATA[29]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \out_r_TDATA[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \out_r_TDATA[30]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \out_r_TDATA[3]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \out_r_TDATA[4]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_r_TDATA[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \out_r_TDATA[6]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_r_TDATA[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \out_r_TDATA[8]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \out_r_TDATA[9]_INST_0\ : label is "soft_lutpair9";
begin
  in1_TREADY <= \^in1_tready\;
  in2_TREADY <= \^in2_tready\;
  out_r_TVALID <= \^out_r_tvalid\;
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => out_last_V_1_ack_in,
      I1 => out_data_1_ack_in,
      I2 => \ap_CS_fsm_reg_n_0_[2]\,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFFFFFFF"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => \in1_data_0_state_reg_n_0_[0]\,
      I2 => \in2_data_0_state_reg_n_0_[0]\,
      I3 => ap_CS_fsm_state2,
      I4 => out_data_1_ack_in,
      I5 => \ap_CS_fsm_reg_n_0_[2]\,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555501111111"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_CS_fsm_state2,
      I2 => out_last_V_1_ack_in,
      I3 => \ap_CS_fsm_reg_n_0_[2]\,
      I4 => out_data_1_ack_in,
      I5 => p_87_in,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => \ap_CS_fsm_reg_n_0_[2]\,
      R => ap_rst_n_inv
    );
\in1_data_0_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => in1_data_0_ack_in,
      I2 => in1_data_0_sel_wr,
      O => \in1_data_0_payload_A[31]_i_1_n_0\
    );
\in1_data_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(0),
      Q => in1_data_0_payload_A(0),
      R => '0'
    );
\in1_data_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(10),
      Q => in1_data_0_payload_A(10),
      R => '0'
    );
\in1_data_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(11),
      Q => in1_data_0_payload_A(11),
      R => '0'
    );
\in1_data_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(12),
      Q => in1_data_0_payload_A(12),
      R => '0'
    );
\in1_data_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(13),
      Q => in1_data_0_payload_A(13),
      R => '0'
    );
\in1_data_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(14),
      Q => in1_data_0_payload_A(14),
      R => '0'
    );
\in1_data_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(15),
      Q => in1_data_0_payload_A(15),
      R => '0'
    );
\in1_data_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(16),
      Q => in1_data_0_payload_A(16),
      R => '0'
    );
\in1_data_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(17),
      Q => in1_data_0_payload_A(17),
      R => '0'
    );
\in1_data_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(18),
      Q => in1_data_0_payload_A(18),
      R => '0'
    );
\in1_data_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(19),
      Q => in1_data_0_payload_A(19),
      R => '0'
    );
\in1_data_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(1),
      Q => in1_data_0_payload_A(1),
      R => '0'
    );
\in1_data_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(20),
      Q => in1_data_0_payload_A(20),
      R => '0'
    );
\in1_data_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(21),
      Q => in1_data_0_payload_A(21),
      R => '0'
    );
\in1_data_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(22),
      Q => in1_data_0_payload_A(22),
      R => '0'
    );
\in1_data_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(23),
      Q => in1_data_0_payload_A(23),
      R => '0'
    );
\in1_data_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(24),
      Q => in1_data_0_payload_A(24),
      R => '0'
    );
\in1_data_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(25),
      Q => in1_data_0_payload_A(25),
      R => '0'
    );
\in1_data_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(26),
      Q => in1_data_0_payload_A(26),
      R => '0'
    );
\in1_data_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(27),
      Q => in1_data_0_payload_A(27),
      R => '0'
    );
\in1_data_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(28),
      Q => in1_data_0_payload_A(28),
      R => '0'
    );
\in1_data_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(29),
      Q => in1_data_0_payload_A(29),
      R => '0'
    );
\in1_data_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(2),
      Q => in1_data_0_payload_A(2),
      R => '0'
    );
\in1_data_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(30),
      Q => in1_data_0_payload_A(30),
      R => '0'
    );
\in1_data_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(31),
      Q => in1_data_0_payload_A(31),
      R => '0'
    );
\in1_data_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(3),
      Q => in1_data_0_payload_A(3),
      R => '0'
    );
\in1_data_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(4),
      Q => in1_data_0_payload_A(4),
      R => '0'
    );
\in1_data_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(5),
      Q => in1_data_0_payload_A(5),
      R => '0'
    );
\in1_data_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(6),
      Q => in1_data_0_payload_A(6),
      R => '0'
    );
\in1_data_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(7),
      Q => in1_data_0_payload_A(7),
      R => '0'
    );
\in1_data_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(8),
      Q => in1_data_0_payload_A(8),
      R => '0'
    );
\in1_data_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in1_data_0_payload_A[31]_i_1_n_0\,
      D => in1_TDATA(9),
      Q => in1_data_0_payload_A(9),
      R => '0'
    );
\in1_data_0_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => in1_data_0_ack_in,
      I2 => in1_data_0_sel_wr,
      O => in1_data_0_load_B
    );
\in1_data_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(0),
      Q => in1_data_0_payload_B(0),
      R => '0'
    );
\in1_data_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(10),
      Q => in1_data_0_payload_B(10),
      R => '0'
    );
\in1_data_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(11),
      Q => in1_data_0_payload_B(11),
      R => '0'
    );
\in1_data_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(12),
      Q => in1_data_0_payload_B(12),
      R => '0'
    );
\in1_data_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(13),
      Q => in1_data_0_payload_B(13),
      R => '0'
    );
\in1_data_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(14),
      Q => in1_data_0_payload_B(14),
      R => '0'
    );
\in1_data_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(15),
      Q => in1_data_0_payload_B(15),
      R => '0'
    );
\in1_data_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(16),
      Q => in1_data_0_payload_B(16),
      R => '0'
    );
\in1_data_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(17),
      Q => in1_data_0_payload_B(17),
      R => '0'
    );
\in1_data_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(18),
      Q => in1_data_0_payload_B(18),
      R => '0'
    );
\in1_data_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(19),
      Q => in1_data_0_payload_B(19),
      R => '0'
    );
\in1_data_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(1),
      Q => in1_data_0_payload_B(1),
      R => '0'
    );
\in1_data_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(20),
      Q => in1_data_0_payload_B(20),
      R => '0'
    );
\in1_data_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(21),
      Q => in1_data_0_payload_B(21),
      R => '0'
    );
\in1_data_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(22),
      Q => in1_data_0_payload_B(22),
      R => '0'
    );
\in1_data_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(23),
      Q => in1_data_0_payload_B(23),
      R => '0'
    );
\in1_data_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(24),
      Q => in1_data_0_payload_B(24),
      R => '0'
    );
\in1_data_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(25),
      Q => in1_data_0_payload_B(25),
      R => '0'
    );
\in1_data_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(26),
      Q => in1_data_0_payload_B(26),
      R => '0'
    );
\in1_data_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(27),
      Q => in1_data_0_payload_B(27),
      R => '0'
    );
\in1_data_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(28),
      Q => in1_data_0_payload_B(28),
      R => '0'
    );
\in1_data_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(29),
      Q => in1_data_0_payload_B(29),
      R => '0'
    );
\in1_data_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(2),
      Q => in1_data_0_payload_B(2),
      R => '0'
    );
\in1_data_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(30),
      Q => in1_data_0_payload_B(30),
      R => '0'
    );
\in1_data_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(31),
      Q => in1_data_0_payload_B(31),
      R => '0'
    );
\in1_data_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(3),
      Q => in1_data_0_payload_B(3),
      R => '0'
    );
\in1_data_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(4),
      Q => in1_data_0_payload_B(4),
      R => '0'
    );
\in1_data_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(5),
      Q => in1_data_0_payload_B(5),
      R => '0'
    );
\in1_data_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(6),
      Q => in1_data_0_payload_B(6),
      R => '0'
    );
\in1_data_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(7),
      Q => in1_data_0_payload_B(7),
      R => '0'
    );
\in1_data_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(8),
      Q => in1_data_0_payload_B(8),
      R => '0'
    );
\in1_data_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in1_data_0_load_B,
      D => in1_TDATA(9),
      Q => in1_data_0_payload_B(9),
      R => '0'
    );
in1_data_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => \in2_data_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => out_data_1_ack_in,
      I4 => in1_data_0_sel,
      O => in1_data_0_sel_rd_i_1_n_0
    );
in1_data_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => in1_data_0_sel_rd_i_1_n_0,
      Q => in1_data_0_sel,
      R => ap_rst_n_inv
    );
in1_data_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => in1_TVALID,
      I1 => in1_data_0_ack_in,
      I2 => in1_data_0_sel_wr,
      O => in1_data_0_sel_wr_i_1_n_0
    );
in1_data_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => in1_data_0_sel_wr_i_1_n_0,
      Q => in1_data_0_sel_wr,
      R => ap_rst_n_inv
    );
\in1_data_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => p_87_in,
      I2 => in1_TVALID,
      I3 => in1_data_0_ack_in,
      I4 => \in1_data_0_state_reg_n_0_[0]\,
      O => \in1_data_0_state[0]_i_1_n_0\
    );
\in1_data_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C000FFFFEAAAFFFF"
    )
        port map (
      I0 => in1_data_0_ack_in,
      I1 => out_data_1_ack_in,
      I2 => ap_CS_fsm_state2,
      I3 => \in2_data_0_state_reg_n_0_[0]\,
      I4 => \in1_data_0_state_reg_n_0_[0]\,
      I5 => in1_TVALID,
      O => \in1_data_0_state[1]_i_1_n_0\
    );
\in1_data_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in1_data_0_state[0]_i_1_n_0\,
      Q => \in1_data_0_state_reg_n_0_[0]\,
      R => '0'
    );
\in1_data_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in1_data_0_state[1]_i_1_n_0\,
      Q => in1_data_0_ack_in,
      R => ap_rst_n_inv
    );
\in1_last_V_0_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAE00A2"
    )
        port map (
      I0 => in1_TLAST(0),
      I1 => \in1_last_V_0_state_reg_n_0_[0]\,
      I2 => \^in1_tready\,
      I3 => in1_last_V_0_sel_wr,
      I4 => in1_last_V_0_payload_A,
      O => \in1_last_V_0_payload_A[0]_i_1_n_0\
    );
\in1_last_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \in1_last_V_0_payload_A[0]_i_1_n_0\,
      Q => in1_last_V_0_payload_A,
      R => '0'
    );
\in1_last_V_0_payload_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFB8808"
    )
        port map (
      I0 => in1_TLAST(0),
      I1 => in1_last_V_0_sel_wr,
      I2 => \in1_last_V_0_state_reg_n_0_[0]\,
      I3 => \^in1_tready\,
      I4 => in1_last_V_0_payload_B,
      O => \in1_last_V_0_payload_B[0]_i_1_n_0\
    );
\in1_last_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \in1_last_V_0_payload_B[0]_i_1_n_0\,
      Q => in1_last_V_0_payload_B,
      R => '0'
    );
in1_last_V_0_sel_rd_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => \in2_data_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => out_data_1_ack_in,
      I4 => \in1_last_V_0_state_reg_n_0_[0]\,
      I5 => in1_last_V_0_sel,
      O => in1_last_V_0_sel_rd_i_1_n_0
    );
in1_last_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => in1_last_V_0_sel_rd_i_1_n_0,
      Q => in1_last_V_0_sel,
      R => ap_rst_n_inv
    );
in1_last_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => in1_TVALID,
      I1 => \^in1_tready\,
      I2 => in1_last_V_0_sel_wr,
      O => in1_last_V_0_sel_wr_i_1_n_0
    );
in1_last_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => in1_last_V_0_sel_wr_i_1_n_0,
      Q => in1_last_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\in1_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => p_87_in,
      I2 => in1_TVALID,
      I3 => \^in1_tready\,
      I4 => \in1_last_V_0_state_reg_n_0_[0]\,
      O => \in1_last_V_0_state[0]_i_1_n_0\
    );
\in1_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\in1_last_V_0_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FB"
    )
        port map (
      I0 => \^in1_tready\,
      I1 => \in1_last_V_0_state_reg_n_0_[0]\,
      I2 => p_87_in,
      I3 => in1_TVALID,
      O => \in1_last_V_0_state[1]_i_2_n_0\
    );
\in1_last_V_0_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => \in2_data_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => out_data_1_ack_in,
      O => p_87_in
    );
\in1_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in1_last_V_0_state[0]_i_1_n_0\,
      Q => \in1_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\in1_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in1_last_V_0_state[1]_i_2_n_0\,
      Q => \^in1_tready\,
      R => ap_rst_n_inv
    );
\in2_data_0_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \in2_data_0_state_reg_n_0_[0]\,
      I1 => in2_data_0_ack_in,
      I2 => in2_data_0_sel_wr,
      O => \in2_data_0_payload_A[31]_i_1_n_0\
    );
\in2_data_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(0),
      Q => in2_data_0_payload_A(0),
      R => '0'
    );
\in2_data_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(10),
      Q => in2_data_0_payload_A(10),
      R => '0'
    );
\in2_data_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(11),
      Q => in2_data_0_payload_A(11),
      R => '0'
    );
\in2_data_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(12),
      Q => in2_data_0_payload_A(12),
      R => '0'
    );
\in2_data_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(13),
      Q => in2_data_0_payload_A(13),
      R => '0'
    );
\in2_data_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(14),
      Q => in2_data_0_payload_A(14),
      R => '0'
    );
\in2_data_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(15),
      Q => in2_data_0_payload_A(15),
      R => '0'
    );
\in2_data_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(16),
      Q => in2_data_0_payload_A(16),
      R => '0'
    );
\in2_data_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(17),
      Q => in2_data_0_payload_A(17),
      R => '0'
    );
\in2_data_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(18),
      Q => in2_data_0_payload_A(18),
      R => '0'
    );
\in2_data_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(19),
      Q => in2_data_0_payload_A(19),
      R => '0'
    );
\in2_data_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(1),
      Q => in2_data_0_payload_A(1),
      R => '0'
    );
\in2_data_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(20),
      Q => in2_data_0_payload_A(20),
      R => '0'
    );
\in2_data_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(21),
      Q => in2_data_0_payload_A(21),
      R => '0'
    );
\in2_data_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(22),
      Q => in2_data_0_payload_A(22),
      R => '0'
    );
\in2_data_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(23),
      Q => in2_data_0_payload_A(23),
      R => '0'
    );
\in2_data_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(24),
      Q => in2_data_0_payload_A(24),
      R => '0'
    );
\in2_data_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(25),
      Q => in2_data_0_payload_A(25),
      R => '0'
    );
\in2_data_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(26),
      Q => in2_data_0_payload_A(26),
      R => '0'
    );
\in2_data_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(27),
      Q => in2_data_0_payload_A(27),
      R => '0'
    );
\in2_data_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(28),
      Q => in2_data_0_payload_A(28),
      R => '0'
    );
\in2_data_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(29),
      Q => in2_data_0_payload_A(29),
      R => '0'
    );
\in2_data_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(2),
      Q => in2_data_0_payload_A(2),
      R => '0'
    );
\in2_data_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(30),
      Q => in2_data_0_payload_A(30),
      R => '0'
    );
\in2_data_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(31),
      Q => in2_data_0_payload_A(31),
      R => '0'
    );
\in2_data_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(3),
      Q => in2_data_0_payload_A(3),
      R => '0'
    );
\in2_data_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(4),
      Q => in2_data_0_payload_A(4),
      R => '0'
    );
\in2_data_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(5),
      Q => in2_data_0_payload_A(5),
      R => '0'
    );
\in2_data_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(6),
      Q => in2_data_0_payload_A(6),
      R => '0'
    );
\in2_data_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(7),
      Q => in2_data_0_payload_A(7),
      R => '0'
    );
\in2_data_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(8),
      Q => in2_data_0_payload_A(8),
      R => '0'
    );
\in2_data_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \in2_data_0_payload_A[31]_i_1_n_0\,
      D => in2_TDATA(9),
      Q => in2_data_0_payload_A(9),
      R => '0'
    );
\in2_data_0_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => in2_data_0_sel_wr,
      I1 => \in2_data_0_state_reg_n_0_[0]\,
      I2 => in2_data_0_ack_in,
      O => in2_data_0_load_B
    );
\in2_data_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(0),
      Q => in2_data_0_payload_B(0),
      R => '0'
    );
\in2_data_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(10),
      Q => in2_data_0_payload_B(10),
      R => '0'
    );
\in2_data_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(11),
      Q => in2_data_0_payload_B(11),
      R => '0'
    );
\in2_data_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(12),
      Q => in2_data_0_payload_B(12),
      R => '0'
    );
\in2_data_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(13),
      Q => in2_data_0_payload_B(13),
      R => '0'
    );
\in2_data_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(14),
      Q => in2_data_0_payload_B(14),
      R => '0'
    );
\in2_data_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(15),
      Q => in2_data_0_payload_B(15),
      R => '0'
    );
\in2_data_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(16),
      Q => in2_data_0_payload_B(16),
      R => '0'
    );
\in2_data_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(17),
      Q => in2_data_0_payload_B(17),
      R => '0'
    );
\in2_data_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(18),
      Q => in2_data_0_payload_B(18),
      R => '0'
    );
\in2_data_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(19),
      Q => in2_data_0_payload_B(19),
      R => '0'
    );
\in2_data_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(1),
      Q => in2_data_0_payload_B(1),
      R => '0'
    );
\in2_data_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(20),
      Q => in2_data_0_payload_B(20),
      R => '0'
    );
\in2_data_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(21),
      Q => in2_data_0_payload_B(21),
      R => '0'
    );
\in2_data_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(22),
      Q => in2_data_0_payload_B(22),
      R => '0'
    );
\in2_data_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(23),
      Q => in2_data_0_payload_B(23),
      R => '0'
    );
\in2_data_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(24),
      Q => in2_data_0_payload_B(24),
      R => '0'
    );
\in2_data_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(25),
      Q => in2_data_0_payload_B(25),
      R => '0'
    );
\in2_data_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(26),
      Q => in2_data_0_payload_B(26),
      R => '0'
    );
\in2_data_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(27),
      Q => in2_data_0_payload_B(27),
      R => '0'
    );
\in2_data_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(28),
      Q => in2_data_0_payload_B(28),
      R => '0'
    );
\in2_data_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(29),
      Q => in2_data_0_payload_B(29),
      R => '0'
    );
\in2_data_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(2),
      Q => in2_data_0_payload_B(2),
      R => '0'
    );
\in2_data_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(30),
      Q => in2_data_0_payload_B(30),
      R => '0'
    );
\in2_data_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(31),
      Q => in2_data_0_payload_B(31),
      R => '0'
    );
\in2_data_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(3),
      Q => in2_data_0_payload_B(3),
      R => '0'
    );
\in2_data_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(4),
      Q => in2_data_0_payload_B(4),
      R => '0'
    );
\in2_data_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(5),
      Q => in2_data_0_payload_B(5),
      R => '0'
    );
\in2_data_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(6),
      Q => in2_data_0_payload_B(6),
      R => '0'
    );
\in2_data_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(7),
      Q => in2_data_0_payload_B(7),
      R => '0'
    );
\in2_data_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(8),
      Q => in2_data_0_payload_B(8),
      R => '0'
    );
\in2_data_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => in2_data_0_load_B,
      D => in2_TDATA(9),
      Q => in2_data_0_payload_B(9),
      R => '0'
    );
in2_data_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => \in2_data_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => out_data_1_ack_in,
      I4 => in2_data_0_sel,
      O => in2_data_0_sel_rd_i_1_n_0
    );
in2_data_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => in2_data_0_sel_rd_i_1_n_0,
      Q => in2_data_0_sel,
      R => ap_rst_n_inv
    );
in2_data_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => in2_TVALID,
      I1 => in2_data_0_ack_in,
      I2 => in2_data_0_sel_wr,
      O => in2_data_0_sel_wr_i_1_n_0
    );
in2_data_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => in2_data_0_sel_wr_i_1_n_0,
      Q => in2_data_0_sel_wr,
      R => ap_rst_n_inv
    );
\in2_data_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => p_87_in,
      I2 => in2_TVALID,
      I3 => in2_data_0_ack_in,
      I4 => \in2_data_0_state_reg_n_0_[0]\,
      O => \in2_data_0_state[0]_i_1_n_0\
    );
\in2_data_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0FF00FFEAFFAAFF"
    )
        port map (
      I0 => in2_data_0_ack_in,
      I1 => out_data_1_ack_in,
      I2 => ap_CS_fsm_state2,
      I3 => \in2_data_0_state_reg_n_0_[0]\,
      I4 => \in1_data_0_state_reg_n_0_[0]\,
      I5 => in2_TVALID,
      O => \in2_data_0_state[1]_i_1_n_0\
    );
\in2_data_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in2_data_0_state[0]_i_1_n_0\,
      Q => \in2_data_0_state_reg_n_0_[0]\,
      R => '0'
    );
\in2_data_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in2_data_0_state[1]_i_1_n_0\,
      Q => in2_data_0_ack_in,
      R => ap_rst_n_inv
    );
\in2_last_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => p_87_in,
      I2 => in2_TVALID,
      I3 => \^in2_tready\,
      I4 => \in2_last_V_0_state_reg_n_0_[0]\,
      O => \in2_last_V_0_state[0]_i_1_n_0\
    );
\in2_last_V_0_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FB"
    )
        port map (
      I0 => \^in2_tready\,
      I1 => \in2_last_V_0_state_reg_n_0_[0]\,
      I2 => p_87_in,
      I3 => in2_TVALID,
      O => \in2_last_V_0_state[1]_i_1_n_0\
    );
\in2_last_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in2_last_V_0_state[0]_i_1_n_0\,
      Q => \in2_last_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\in2_last_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \in2_last_V_0_state[1]_i_1_n_0\,
      Q => \^in2_tready\,
      R => ap_rst_n_inv
    );
\out_data_1_payload_A[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(11),
      I1 => in2_data_0_payload_A(11),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(11)
    );
\out_data_1_payload_A[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(10),
      I1 => in2_data_0_payload_A(10),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(10)
    );
\out_data_1_payload_A[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(9),
      I1 => in2_data_0_payload_A(9),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(9)
    );
\out_data_1_payload_A[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(8),
      I1 => in2_data_0_payload_A(8),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(8)
    );
\out_data_1_payload_A[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(11),
      I2 => in2_data_0_payload_B(11),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(11),
      I5 => in1_data_0_payload_B(11),
      O => \out_data_1_payload_A[11]_i_6_n_0\
    );
\out_data_1_payload_A[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(10),
      I2 => in2_data_0_payload_B(10),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(10),
      I5 => in1_data_0_payload_B(10),
      O => \out_data_1_payload_A[11]_i_7_n_0\
    );
\out_data_1_payload_A[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(9),
      I2 => in2_data_0_payload_B(9),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(9),
      I5 => in1_data_0_payload_B(9),
      O => \out_data_1_payload_A[11]_i_8_n_0\
    );
\out_data_1_payload_A[11]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(8),
      I2 => in2_data_0_payload_B(8),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(8),
      I5 => in1_data_0_payload_B(8),
      O => \out_data_1_payload_A[11]_i_9_n_0\
    );
\out_data_1_payload_A[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(15),
      I1 => in2_data_0_payload_A(15),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(15)
    );
\out_data_1_payload_A[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(14),
      I1 => in2_data_0_payload_A(14),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(14)
    );
\out_data_1_payload_A[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(13),
      I1 => in2_data_0_payload_A(13),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(13)
    );
\out_data_1_payload_A[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(12),
      I1 => in2_data_0_payload_A(12),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(12)
    );
\out_data_1_payload_A[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(15),
      I2 => in2_data_0_payload_B(15),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(15),
      I5 => in1_data_0_payload_B(15),
      O => \out_data_1_payload_A[15]_i_6_n_0\
    );
\out_data_1_payload_A[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(14),
      I2 => in2_data_0_payload_B(14),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(14),
      I5 => in1_data_0_payload_B(14),
      O => \out_data_1_payload_A[15]_i_7_n_0\
    );
\out_data_1_payload_A[15]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(13),
      I2 => in2_data_0_payload_B(13),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(13),
      I5 => in1_data_0_payload_B(13),
      O => \out_data_1_payload_A[15]_i_8_n_0\
    );
\out_data_1_payload_A[15]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(12),
      I2 => in2_data_0_payload_B(12),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(12),
      I5 => in1_data_0_payload_B(12),
      O => \out_data_1_payload_A[15]_i_9_n_0\
    );
\out_data_1_payload_A[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(19),
      I1 => in2_data_0_payload_A(19),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(19)
    );
\out_data_1_payload_A[19]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(18),
      I1 => in2_data_0_payload_A(18),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(18)
    );
\out_data_1_payload_A[19]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(17),
      I1 => in2_data_0_payload_A(17),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(17)
    );
\out_data_1_payload_A[19]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(16),
      I1 => in2_data_0_payload_A(16),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(16)
    );
\out_data_1_payload_A[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(19),
      I2 => in2_data_0_payload_B(19),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(19),
      I5 => in1_data_0_payload_B(19),
      O => \out_data_1_payload_A[19]_i_6_n_0\
    );
\out_data_1_payload_A[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(18),
      I2 => in2_data_0_payload_B(18),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(18),
      I5 => in1_data_0_payload_B(18),
      O => \out_data_1_payload_A[19]_i_7_n_0\
    );
\out_data_1_payload_A[19]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(17),
      I2 => in2_data_0_payload_B(17),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(17),
      I5 => in1_data_0_payload_B(17),
      O => \out_data_1_payload_A[19]_i_8_n_0\
    );
\out_data_1_payload_A[19]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(16),
      I2 => in2_data_0_payload_B(16),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(16),
      I5 => in1_data_0_payload_B(16),
      O => \out_data_1_payload_A[19]_i_9_n_0\
    );
\out_data_1_payload_A[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(23),
      I1 => in2_data_0_payload_A(23),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(23)
    );
\out_data_1_payload_A[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(22),
      I1 => in2_data_0_payload_A(22),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(22)
    );
\out_data_1_payload_A[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(21),
      I1 => in2_data_0_payload_A(21),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(21)
    );
\out_data_1_payload_A[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(20),
      I1 => in2_data_0_payload_A(20),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(20)
    );
\out_data_1_payload_A[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(23),
      I2 => in2_data_0_payload_B(23),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(23),
      I5 => in1_data_0_payload_B(23),
      O => \out_data_1_payload_A[23]_i_6_n_0\
    );
\out_data_1_payload_A[23]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(22),
      I2 => in2_data_0_payload_B(22),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(22),
      I5 => in1_data_0_payload_B(22),
      O => \out_data_1_payload_A[23]_i_7_n_0\
    );
\out_data_1_payload_A[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(21),
      I2 => in2_data_0_payload_B(21),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(21),
      I5 => in1_data_0_payload_B(21),
      O => \out_data_1_payload_A[23]_i_8_n_0\
    );
\out_data_1_payload_A[23]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(20),
      I2 => in2_data_0_payload_B(20),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(20),
      I5 => in1_data_0_payload_B(20),
      O => \out_data_1_payload_A[23]_i_9_n_0\
    );
\out_data_1_payload_A[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(27),
      I1 => in2_data_0_payload_A(27),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(27)
    );
\out_data_1_payload_A[27]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(26),
      I1 => in2_data_0_payload_A(26),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(26)
    );
\out_data_1_payload_A[27]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(25),
      I1 => in2_data_0_payload_A(25),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(25)
    );
\out_data_1_payload_A[27]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(24),
      I1 => in2_data_0_payload_A(24),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(24)
    );
\out_data_1_payload_A[27]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(27),
      I2 => in2_data_0_payload_B(27),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(27),
      I5 => in1_data_0_payload_B(27),
      O => \out_data_1_payload_A[27]_i_6_n_0\
    );
\out_data_1_payload_A[27]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(26),
      I2 => in2_data_0_payload_B(26),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(26),
      I5 => in1_data_0_payload_B(26),
      O => \out_data_1_payload_A[27]_i_7_n_0\
    );
\out_data_1_payload_A[27]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(25),
      I2 => in2_data_0_payload_B(25),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(25),
      I5 => in1_data_0_payload_B(25),
      O => \out_data_1_payload_A[27]_i_8_n_0\
    );
\out_data_1_payload_A[27]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(24),
      I2 => in2_data_0_payload_B(24),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(24),
      I5 => in1_data_0_payload_B(24),
      O => \out_data_1_payload_A[27]_i_9_n_0\
    );
\out_data_1_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \out_data_1_state_reg_n_0_[0]\,
      I1 => out_data_1_ack_in,
      I2 => out_data_1_sel_wr,
      O => \out_data_1_payload_A[31]_i_1_n_0\
    );
\out_data_1_payload_A[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(30),
      I1 => in2_data_0_payload_A(30),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(30)
    );
\out_data_1_payload_A[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(29),
      I1 => in2_data_0_payload_A(29),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(29)
    );
\out_data_1_payload_A[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(28),
      I1 => in2_data_0_payload_A(28),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(28)
    );
\out_data_1_payload_A[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(31),
      I2 => in2_data_0_payload_B(31),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(31),
      I5 => in1_data_0_payload_B(31),
      O => \out_data_1_payload_A[31]_i_6_n_0\
    );
\out_data_1_payload_A[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(30),
      I2 => in2_data_0_payload_B(30),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(30),
      I5 => in1_data_0_payload_B(30),
      O => \out_data_1_payload_A[31]_i_7_n_0\
    );
\out_data_1_payload_A[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(29),
      I2 => in2_data_0_payload_B(29),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(29),
      I5 => in1_data_0_payload_B(29),
      O => \out_data_1_payload_A[31]_i_8_n_0\
    );
\out_data_1_payload_A[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(28),
      I2 => in2_data_0_payload_B(28),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(28),
      I5 => in1_data_0_payload_B(28),
      O => \out_data_1_payload_A[31]_i_9_n_0\
    );
\out_data_1_payload_A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(3),
      I1 => in2_data_0_payload_A(3),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(3)
    );
\out_data_1_payload_A[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(2),
      I1 => in2_data_0_payload_A(2),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(2)
    );
\out_data_1_payload_A[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(1),
      I1 => in2_data_0_payload_A(1),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(1)
    );
\out_data_1_payload_A[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(0),
      I1 => in2_data_0_payload_A(0),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(0)
    );
\out_data_1_payload_A[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(3),
      I2 => in2_data_0_payload_B(3),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(3),
      I5 => in1_data_0_payload_B(3),
      O => \out_data_1_payload_A[3]_i_6_n_0\
    );
\out_data_1_payload_A[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(2),
      I2 => in2_data_0_payload_B(2),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(2),
      I5 => in1_data_0_payload_B(2),
      O => \out_data_1_payload_A[3]_i_7_n_0\
    );
\out_data_1_payload_A[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(1),
      I2 => in2_data_0_payload_B(1),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(1),
      I5 => in1_data_0_payload_B(1),
      O => \out_data_1_payload_A[3]_i_8_n_0\
    );
\out_data_1_payload_A[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(0),
      I2 => in2_data_0_payload_B(0),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(0),
      I5 => in1_data_0_payload_B(0),
      O => \out_data_1_payload_A[3]_i_9_n_0\
    );
\out_data_1_payload_A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(7),
      I1 => in2_data_0_payload_A(7),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(7)
    );
\out_data_1_payload_A[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(6),
      I1 => in2_data_0_payload_A(6),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(6)
    );
\out_data_1_payload_A[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(5),
      I1 => in2_data_0_payload_A(5),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(5)
    );
\out_data_1_payload_A[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in2_data_0_payload_B(4),
      I1 => in2_data_0_payload_A(4),
      I2 => in2_data_0_sel,
      O => in2_data_0_data_out(4)
    );
\out_data_1_payload_A[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(7),
      I2 => in2_data_0_payload_B(7),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(7),
      I5 => in1_data_0_payload_B(7),
      O => \out_data_1_payload_A[7]_i_6_n_0\
    );
\out_data_1_payload_A[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(6),
      I2 => in2_data_0_payload_B(6),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(6),
      I5 => in1_data_0_payload_B(6),
      O => \out_data_1_payload_A[7]_i_7_n_0\
    );
\out_data_1_payload_A[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(5),
      I2 => in2_data_0_payload_B(5),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(5),
      I5 => in1_data_0_payload_B(5),
      O => \out_data_1_payload_A[7]_i_8_n_0\
    );
\out_data_1_payload_A[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B1B1BE4E41BE4E4"
    )
        port map (
      I0 => in2_data_0_sel,
      I1 => in2_data_0_payload_A(4),
      I2 => in2_data_0_payload_B(4),
      I3 => in1_data_0_sel,
      I4 => in1_data_0_payload_A(4),
      I5 => in1_data_0_payload_B(4),
      O => \out_data_1_payload_A[7]_i_9_n_0\
    );
\out_data_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(0),
      Q => out_data_1_payload_A(0),
      R => '0'
    );
\out_data_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(10),
      Q => out_data_1_payload_A(10),
      R => '0'
    );
\out_data_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(11),
      Q => out_data_1_payload_A(11),
      R => '0'
    );
\out_data_1_payload_A_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_1_payload_A_reg[7]_i_1_n_0\,
      CO(3) => \out_data_1_payload_A_reg[11]_i_1_n_0\,
      CO(2) => \out_data_1_payload_A_reg[11]_i_1_n_1\,
      CO(1) => \out_data_1_payload_A_reg[11]_i_1_n_2\,
      CO(0) => \out_data_1_payload_A_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in2_data_0_data_out(11 downto 8),
      O(3 downto 0) => out_data_tmp_fu_75_p2(11 downto 8),
      S(3) => \out_data_1_payload_A[11]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[11]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[11]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[11]_i_9_n_0\
    );
\out_data_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(12),
      Q => out_data_1_payload_A(12),
      R => '0'
    );
\out_data_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(13),
      Q => out_data_1_payload_A(13),
      R => '0'
    );
\out_data_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(14),
      Q => out_data_1_payload_A(14),
      R => '0'
    );
\out_data_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(15),
      Q => out_data_1_payload_A(15),
      R => '0'
    );
\out_data_1_payload_A_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_1_payload_A_reg[11]_i_1_n_0\,
      CO(3) => \out_data_1_payload_A_reg[15]_i_1_n_0\,
      CO(2) => \out_data_1_payload_A_reg[15]_i_1_n_1\,
      CO(1) => \out_data_1_payload_A_reg[15]_i_1_n_2\,
      CO(0) => \out_data_1_payload_A_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in2_data_0_data_out(15 downto 12),
      O(3 downto 0) => out_data_tmp_fu_75_p2(15 downto 12),
      S(3) => \out_data_1_payload_A[15]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[15]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[15]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[15]_i_9_n_0\
    );
\out_data_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(16),
      Q => out_data_1_payload_A(16),
      R => '0'
    );
\out_data_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(17),
      Q => out_data_1_payload_A(17),
      R => '0'
    );
\out_data_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(18),
      Q => out_data_1_payload_A(18),
      R => '0'
    );
\out_data_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(19),
      Q => out_data_1_payload_A(19),
      R => '0'
    );
\out_data_1_payload_A_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_1_payload_A_reg[15]_i_1_n_0\,
      CO(3) => \out_data_1_payload_A_reg[19]_i_1_n_0\,
      CO(2) => \out_data_1_payload_A_reg[19]_i_1_n_1\,
      CO(1) => \out_data_1_payload_A_reg[19]_i_1_n_2\,
      CO(0) => \out_data_1_payload_A_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in2_data_0_data_out(19 downto 16),
      O(3 downto 0) => out_data_tmp_fu_75_p2(19 downto 16),
      S(3) => \out_data_1_payload_A[19]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[19]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[19]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[19]_i_9_n_0\
    );
\out_data_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(1),
      Q => out_data_1_payload_A(1),
      R => '0'
    );
\out_data_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(20),
      Q => out_data_1_payload_A(20),
      R => '0'
    );
\out_data_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(21),
      Q => out_data_1_payload_A(21),
      R => '0'
    );
\out_data_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(22),
      Q => out_data_1_payload_A(22),
      R => '0'
    );
\out_data_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(23),
      Q => out_data_1_payload_A(23),
      R => '0'
    );
\out_data_1_payload_A_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_1_payload_A_reg[19]_i_1_n_0\,
      CO(3) => \out_data_1_payload_A_reg[23]_i_1_n_0\,
      CO(2) => \out_data_1_payload_A_reg[23]_i_1_n_1\,
      CO(1) => \out_data_1_payload_A_reg[23]_i_1_n_2\,
      CO(0) => \out_data_1_payload_A_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in2_data_0_data_out(23 downto 20),
      O(3 downto 0) => out_data_tmp_fu_75_p2(23 downto 20),
      S(3) => \out_data_1_payload_A[23]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[23]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[23]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[23]_i_9_n_0\
    );
\out_data_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(24),
      Q => out_data_1_payload_A(24),
      R => '0'
    );
\out_data_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(25),
      Q => out_data_1_payload_A(25),
      R => '0'
    );
\out_data_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(26),
      Q => out_data_1_payload_A(26),
      R => '0'
    );
\out_data_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(27),
      Q => out_data_1_payload_A(27),
      R => '0'
    );
\out_data_1_payload_A_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_1_payload_A_reg[23]_i_1_n_0\,
      CO(3) => \out_data_1_payload_A_reg[27]_i_1_n_0\,
      CO(2) => \out_data_1_payload_A_reg[27]_i_1_n_1\,
      CO(1) => \out_data_1_payload_A_reg[27]_i_1_n_2\,
      CO(0) => \out_data_1_payload_A_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in2_data_0_data_out(27 downto 24),
      O(3 downto 0) => out_data_tmp_fu_75_p2(27 downto 24),
      S(3) => \out_data_1_payload_A[27]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[27]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[27]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[27]_i_9_n_0\
    );
\out_data_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(28),
      Q => out_data_1_payload_A(28),
      R => '0'
    );
\out_data_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(29),
      Q => out_data_1_payload_A(29),
      R => '0'
    );
\out_data_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(2),
      Q => out_data_1_payload_A(2),
      R => '0'
    );
\out_data_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(30),
      Q => out_data_1_payload_A(30),
      R => '0'
    );
\out_data_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(31),
      Q => out_data_1_payload_A(31),
      R => '0'
    );
\out_data_1_payload_A_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_1_payload_A_reg[27]_i_1_n_0\,
      CO(3) => \NLW_out_data_1_payload_A_reg[31]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \out_data_1_payload_A_reg[31]_i_2_n_1\,
      CO(1) => \out_data_1_payload_A_reg[31]_i_2_n_2\,
      CO(0) => \out_data_1_payload_A_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => in2_data_0_data_out(30 downto 28),
      O(3 downto 0) => out_data_tmp_fu_75_p2(31 downto 28),
      S(3) => \out_data_1_payload_A[31]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[31]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[31]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[31]_i_9_n_0\
    );
\out_data_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(3),
      Q => out_data_1_payload_A(3),
      R => '0'
    );
\out_data_1_payload_A_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \out_data_1_payload_A_reg[3]_i_1_n_0\,
      CO(2) => \out_data_1_payload_A_reg[3]_i_1_n_1\,
      CO(1) => \out_data_1_payload_A_reg[3]_i_1_n_2\,
      CO(0) => \out_data_1_payload_A_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in2_data_0_data_out(3 downto 0),
      O(3 downto 0) => out_data_tmp_fu_75_p2(3 downto 0),
      S(3) => \out_data_1_payload_A[3]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[3]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[3]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[3]_i_9_n_0\
    );
\out_data_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(4),
      Q => out_data_1_payload_A(4),
      R => '0'
    );
\out_data_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(5),
      Q => out_data_1_payload_A(5),
      R => '0'
    );
\out_data_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(6),
      Q => out_data_1_payload_A(6),
      R => '0'
    );
\out_data_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(7),
      Q => out_data_1_payload_A(7),
      R => '0'
    );
\out_data_1_payload_A_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \out_data_1_payload_A_reg[3]_i_1_n_0\,
      CO(3) => \out_data_1_payload_A_reg[7]_i_1_n_0\,
      CO(2) => \out_data_1_payload_A_reg[7]_i_1_n_1\,
      CO(1) => \out_data_1_payload_A_reg[7]_i_1_n_2\,
      CO(0) => \out_data_1_payload_A_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => in2_data_0_data_out(7 downto 4),
      O(3 downto 0) => out_data_tmp_fu_75_p2(7 downto 4),
      S(3) => \out_data_1_payload_A[7]_i_6_n_0\,
      S(2) => \out_data_1_payload_A[7]_i_7_n_0\,
      S(1) => \out_data_1_payload_A[7]_i_8_n_0\,
      S(0) => \out_data_1_payload_A[7]_i_9_n_0\
    );
\out_data_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(8),
      Q => out_data_1_payload_A(8),
      R => '0'
    );
\out_data_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \out_data_1_payload_A[31]_i_1_n_0\,
      D => out_data_tmp_fu_75_p2(9),
      Q => out_data_1_payload_A(9),
      R => '0'
    );
\out_data_1_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => out_data_1_sel_wr,
      I1 => \out_data_1_state_reg_n_0_[0]\,
      I2 => out_data_1_ack_in,
      O => out_data_1_load_B
    );
\out_data_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(0),
      Q => out_data_1_payload_B(0),
      R => '0'
    );
\out_data_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(10),
      Q => out_data_1_payload_B(10),
      R => '0'
    );
\out_data_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(11),
      Q => out_data_1_payload_B(11),
      R => '0'
    );
\out_data_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(12),
      Q => out_data_1_payload_B(12),
      R => '0'
    );
\out_data_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(13),
      Q => out_data_1_payload_B(13),
      R => '0'
    );
\out_data_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(14),
      Q => out_data_1_payload_B(14),
      R => '0'
    );
\out_data_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(15),
      Q => out_data_1_payload_B(15),
      R => '0'
    );
\out_data_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(16),
      Q => out_data_1_payload_B(16),
      R => '0'
    );
\out_data_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(17),
      Q => out_data_1_payload_B(17),
      R => '0'
    );
\out_data_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(18),
      Q => out_data_1_payload_B(18),
      R => '0'
    );
\out_data_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(19),
      Q => out_data_1_payload_B(19),
      R => '0'
    );
\out_data_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(1),
      Q => out_data_1_payload_B(1),
      R => '0'
    );
\out_data_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(20),
      Q => out_data_1_payload_B(20),
      R => '0'
    );
\out_data_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(21),
      Q => out_data_1_payload_B(21),
      R => '0'
    );
\out_data_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(22),
      Q => out_data_1_payload_B(22),
      R => '0'
    );
\out_data_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(23),
      Q => out_data_1_payload_B(23),
      R => '0'
    );
\out_data_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(24),
      Q => out_data_1_payload_B(24),
      R => '0'
    );
\out_data_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(25),
      Q => out_data_1_payload_B(25),
      R => '0'
    );
\out_data_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(26),
      Q => out_data_1_payload_B(26),
      R => '0'
    );
\out_data_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(27),
      Q => out_data_1_payload_B(27),
      R => '0'
    );
\out_data_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(28),
      Q => out_data_1_payload_B(28),
      R => '0'
    );
\out_data_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(29),
      Q => out_data_1_payload_B(29),
      R => '0'
    );
\out_data_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(2),
      Q => out_data_1_payload_B(2),
      R => '0'
    );
\out_data_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(30),
      Q => out_data_1_payload_B(30),
      R => '0'
    );
\out_data_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(31),
      Q => out_data_1_payload_B(31),
      R => '0'
    );
\out_data_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(3),
      Q => out_data_1_payload_B(3),
      R => '0'
    );
\out_data_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(4),
      Q => out_data_1_payload_B(4),
      R => '0'
    );
\out_data_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(5),
      Q => out_data_1_payload_B(5),
      R => '0'
    );
\out_data_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(6),
      Q => out_data_1_payload_B(6),
      R => '0'
    );
\out_data_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(7),
      Q => out_data_1_payload_B(7),
      R => '0'
    );
\out_data_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(8),
      Q => out_data_1_payload_B(8),
      R => '0'
    );
\out_data_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => out_data_1_load_B,
      D => out_data_tmp_fu_75_p2(9),
      Q => out_data_1_payload_B(9),
      R => '0'
    );
out_data_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => out_r_TREADY,
      I1 => \out_data_1_state_reg_n_0_[0]\,
      I2 => out_data_1_sel,
      O => out_data_1_sel_rd_i_1_n_0
    );
out_data_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => out_data_1_sel_rd_i_1_n_0,
      Q => out_data_1_sel,
      R => ap_rst_n_inv
    );
out_data_1_sel_wr_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => \in2_data_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => out_data_1_ack_in,
      I4 => out_data_1_sel_wr,
      O => out_data_1_sel_wr_i_1_n_0
    );
out_data_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => out_data_1_sel_wr_i_1_n_0,
      Q => out_data_1_sel_wr,
      R => ap_rst_n_inv
    );
\out_data_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => out_r_TREADY,
      I2 => p_87_in,
      I3 => out_data_1_ack_in,
      I4 => \out_data_1_state_reg_n_0_[0]\,
      O => \out_data_1_state[0]_i_1_n_0\
    );
\out_data_1_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FBFBFBFBFBFBFB"
    )
        port map (
      I0 => out_data_1_ack_in,
      I1 => \out_data_1_state_reg_n_0_[0]\,
      I2 => out_r_TREADY,
      I3 => \in1_data_0_state_reg_n_0_[0]\,
      I4 => \in2_data_0_state_reg_n_0_[0]\,
      I5 => ap_CS_fsm_state2,
      O => \out_data_1_state[1]_i_1_n_0\
    );
\out_data_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \out_data_1_state[0]_i_1_n_0\,
      Q => \out_data_1_state_reg_n_0_[0]\,
      R => '0'
    );
\out_data_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \out_data_1_state[1]_i_1_n_0\,
      Q => out_data_1_ack_in,
      R => ap_rst_n_inv
    );
\out_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFB8000000B8"
    )
        port map (
      I0 => in1_last_V_0_payload_B,
      I1 => in1_last_V_0_sel,
      I2 => in1_last_V_0_payload_A,
      I3 => \out_last_V_1_payload_A[0]_i_2_n_0\,
      I4 => out_last_V_1_sel_wr,
      I5 => out_last_V_1_payload_A,
      O => \out_last_V_1_payload_A[0]_i_1_n_0\
    );
\out_last_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out_r_tvalid\,
      I1 => out_last_V_1_ack_in,
      O => \out_last_V_1_payload_A[0]_i_2_n_0\
    );
\out_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \out_last_V_1_payload_A[0]_i_1_n_0\,
      Q => out_last_V_1_payload_A,
      R => '0'
    );
\out_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFB8FF0000B800"
    )
        port map (
      I0 => in1_last_V_0_payload_B,
      I1 => in1_last_V_0_sel,
      I2 => in1_last_V_0_payload_A,
      I3 => out_last_V_1_sel_wr,
      I4 => \out_last_V_1_payload_A[0]_i_2_n_0\,
      I5 => out_last_V_1_payload_B,
      O => \out_last_V_1_payload_B[0]_i_1_n_0\
    );
\out_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \out_last_V_1_payload_B[0]_i_1_n_0\,
      Q => out_last_V_1_payload_B,
      R => '0'
    );
out_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => out_r_TREADY,
      I1 => \^out_r_tvalid\,
      I2 => out_last_V_1_sel,
      O => out_last_V_1_sel_rd_i_1_n_0
    );
out_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => out_last_V_1_sel_rd_i_1_n_0,
      Q => out_last_V_1_sel,
      R => ap_rst_n_inv
    );
out_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \in1_data_0_state_reg_n_0_[0]\,
      I1 => \in2_data_0_state_reg_n_0_[0]\,
      I2 => ap_CS_fsm_state2,
      I3 => out_data_1_ack_in,
      I4 => out_last_V_1_ack_in,
      I5 => out_last_V_1_sel_wr,
      O => out_last_V_1_sel_wr_i_1_n_0
    );
out_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => out_last_V_1_sel_wr_i_1_n_0,
      Q => out_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\out_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AAA000"
    )
        port map (
      I0 => ap_rst_n,
      I1 => out_r_TREADY,
      I2 => p_87_in,
      I3 => out_last_V_1_ack_in,
      I4 => \^out_r_tvalid\,
      O => \out_last_V_1_state[0]_i_1_n_0\
    );
\out_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3FB"
    )
        port map (
      I0 => out_last_V_1_ack_in,
      I1 => \^out_r_tvalid\,
      I2 => out_r_TREADY,
      I3 => p_87_in,
      O => \out_last_V_1_state[1]_i_1_n_0\
    );
\out_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \out_last_V_1_state[0]_i_1_n_0\,
      Q => \^out_r_tvalid\,
      R => '0'
    );
\out_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \out_last_V_1_state[1]_i_1_n_0\,
      Q => out_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\out_r_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(0),
      I1 => out_data_1_payload_A(0),
      I2 => out_data_1_sel,
      O => out_r_TDATA(0)
    );
\out_r_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(10),
      I1 => out_data_1_payload_A(10),
      I2 => out_data_1_sel,
      O => out_r_TDATA(10)
    );
\out_r_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(11),
      I1 => out_data_1_payload_A(11),
      I2 => out_data_1_sel,
      O => out_r_TDATA(11)
    );
\out_r_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(12),
      I1 => out_data_1_payload_A(12),
      I2 => out_data_1_sel,
      O => out_r_TDATA(12)
    );
\out_r_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(13),
      I1 => out_data_1_payload_A(13),
      I2 => out_data_1_sel,
      O => out_r_TDATA(13)
    );
\out_r_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(14),
      I1 => out_data_1_payload_A(14),
      I2 => out_data_1_sel,
      O => out_r_TDATA(14)
    );
\out_r_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(15),
      I1 => out_data_1_payload_A(15),
      I2 => out_data_1_sel,
      O => out_r_TDATA(15)
    );
\out_r_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(16),
      I1 => out_data_1_payload_A(16),
      I2 => out_data_1_sel,
      O => out_r_TDATA(16)
    );
\out_r_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(17),
      I1 => out_data_1_payload_A(17),
      I2 => out_data_1_sel,
      O => out_r_TDATA(17)
    );
\out_r_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(18),
      I1 => out_data_1_payload_A(18),
      I2 => out_data_1_sel,
      O => out_r_TDATA(18)
    );
\out_r_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(19),
      I1 => out_data_1_payload_A(19),
      I2 => out_data_1_sel,
      O => out_r_TDATA(19)
    );
\out_r_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(1),
      I1 => out_data_1_payload_A(1),
      I2 => out_data_1_sel,
      O => out_r_TDATA(1)
    );
\out_r_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(20),
      I1 => out_data_1_payload_A(20),
      I2 => out_data_1_sel,
      O => out_r_TDATA(20)
    );
\out_r_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(21),
      I1 => out_data_1_payload_A(21),
      I2 => out_data_1_sel,
      O => out_r_TDATA(21)
    );
\out_r_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(22),
      I1 => out_data_1_payload_A(22),
      I2 => out_data_1_sel,
      O => out_r_TDATA(22)
    );
\out_r_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(23),
      I1 => out_data_1_payload_A(23),
      I2 => out_data_1_sel,
      O => out_r_TDATA(23)
    );
\out_r_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(24),
      I1 => out_data_1_payload_A(24),
      I2 => out_data_1_sel,
      O => out_r_TDATA(24)
    );
\out_r_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(25),
      I1 => out_data_1_payload_A(25),
      I2 => out_data_1_sel,
      O => out_r_TDATA(25)
    );
\out_r_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(26),
      I1 => out_data_1_payload_A(26),
      I2 => out_data_1_sel,
      O => out_r_TDATA(26)
    );
\out_r_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(27),
      I1 => out_data_1_payload_A(27),
      I2 => out_data_1_sel,
      O => out_r_TDATA(27)
    );
\out_r_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(28),
      I1 => out_data_1_payload_A(28),
      I2 => out_data_1_sel,
      O => out_r_TDATA(28)
    );
\out_r_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(29),
      I1 => out_data_1_payload_A(29),
      I2 => out_data_1_sel,
      O => out_r_TDATA(29)
    );
\out_r_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(2),
      I1 => out_data_1_payload_A(2),
      I2 => out_data_1_sel,
      O => out_r_TDATA(2)
    );
\out_r_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(30),
      I1 => out_data_1_payload_A(30),
      I2 => out_data_1_sel,
      O => out_r_TDATA(30)
    );
\out_r_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(31),
      I1 => out_data_1_payload_A(31),
      I2 => out_data_1_sel,
      O => out_r_TDATA(31)
    );
\out_r_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(3),
      I1 => out_data_1_payload_A(3),
      I2 => out_data_1_sel,
      O => out_r_TDATA(3)
    );
\out_r_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(4),
      I1 => out_data_1_payload_A(4),
      I2 => out_data_1_sel,
      O => out_r_TDATA(4)
    );
\out_r_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(5),
      I1 => out_data_1_payload_A(5),
      I2 => out_data_1_sel,
      O => out_r_TDATA(5)
    );
\out_r_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(6),
      I1 => out_data_1_payload_A(6),
      I2 => out_data_1_sel,
      O => out_r_TDATA(6)
    );
\out_r_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(7),
      I1 => out_data_1_payload_A(7),
      I2 => out_data_1_sel,
      O => out_r_TDATA(7)
    );
\out_r_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(8),
      I1 => out_data_1_payload_A(8),
      I2 => out_data_1_sel,
      O => out_r_TDATA(8)
    );
\out_r_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => out_data_1_payload_B(9),
      I1 => out_data_1_payload_A(9),
      I2 => out_data_1_sel,
      O => out_r_TDATA(9)
    );
\out_r_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => out_last_V_1_payload_B,
      I1 => out_last_V_1_sel,
      I2 => out_last_V_1_payload_A,
      O => out_r_TLAST(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    in1_TVALID : in STD_LOGIC;
    in1_TREADY : out STD_LOGIC;
    in1_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in1_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    in2_TVALID : in STD_LOGIC;
    in2_TREADY : out STD_LOGIC;
    in2_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    in2_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    out_r_TVALID : out STD_LOGIC;
    out_r_TREADY : in STD_LOGIC;
    out_r_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    out_r_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_add_0_0,add,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "add,Vivado 2017.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_add
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      in1_TDATA(31 downto 0) => in1_TDATA(31 downto 0),
      in1_TLAST(0) => in1_TLAST(0),
      in1_TREADY => in1_TREADY,
      in1_TVALID => in1_TVALID,
      in2_TDATA(31 downto 0) => in2_TDATA(31 downto 0),
      in2_TLAST(0) => in2_TLAST(0),
      in2_TREADY => in2_TREADY,
      in2_TVALID => in2_TVALID,
      out_r_TDATA(31 downto 0) => out_r_TDATA(31 downto 0),
      out_r_TLAST(0) => out_r_TLAST(0),
      out_r_TREADY => out_r_TREADY,
      out_r_TVALID => out_r_TVALID
    );
end STRUCTURE;
