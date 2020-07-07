-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.1 (win64) Build 1846317 Fri Apr 14 18:55:03 MDT 2017
-- Date        : Mon Jun 17 10:41:05 2019
-- Host        : pc-ietr65 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/vivado_2017.1/DPR/PR_add_sub_int/PR_add_sub_int.srcs/sources_1/bd/design_1/ip/design_1_sub_0_0/design_1_sub_0_0_stub.vhdl
-- Design      : design_1_sub_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_sub_0_0 is
  Port ( 
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

end design_1_sub_0_0;

architecture stub of design_1_sub_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,in1_TVALID,in1_TREADY,in1_TDATA[31:0],in1_TLAST[0:0],in2_TVALID,in2_TREADY,in2_TDATA[31:0],in2_TLAST[0:0],out_r_TVALID,out_r_TREADY,out_r_TDATA[31:0],out_r_TLAST[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "sub,Vivado 2017.1";
begin
end;
