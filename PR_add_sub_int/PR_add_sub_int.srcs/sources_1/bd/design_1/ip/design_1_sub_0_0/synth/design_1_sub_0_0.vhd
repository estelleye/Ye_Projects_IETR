-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:sub:1.0
-- IP Revision: 1906171010

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_sub_0_0 IS
  PORT (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    in1_TVALID : IN STD_LOGIC;
    in1_TREADY : OUT STD_LOGIC;
    in1_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in1_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    in2_TVALID : IN STD_LOGIC;
    in2_TREADY : OUT STD_LOGIC;
    in2_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    in2_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    out_r_TVALID : OUT STD_LOGIC;
    out_r_TREADY : IN STD_LOGIC;
    out_r_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    out_r_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_1_sub_0_0;

ARCHITECTURE design_1_sub_0_0_arch OF design_1_sub_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_sub_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT sub IS
    PORT (
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      in1_TVALID : IN STD_LOGIC;
      in1_TREADY : OUT STD_LOGIC;
      in1_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in1_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      in2_TVALID : IN STD_LOGIC;
      in2_TREADY : OUT STD_LOGIC;
      in2_TDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      in2_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      out_r_TVALID : OUT STD_LOGIC;
      out_r_TREADY : IN STD_LOGIC;
      out_r_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      out_r_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT sub;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_sub_0_0_arch: ARCHITECTURE IS "sub,Vivado 2017.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_sub_0_0_arch : ARCHITECTURE IS "design_1_sub_0_0,sub,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_sub_0_0_arch: ARCHITECTURE IS "design_1_sub_0_0,sub,{x_ipProduct=Vivado 2017.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=sub,x_ipVersion=1.0,x_ipCoreRevision=1906171010,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF in1_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in1 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in1_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in1 TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF in1_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in1 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in1_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in1 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF in2_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 in2 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF in2_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 in2 TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF in2_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 in2 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF in2_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 in2 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF out_r_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 out_r TLAST";
BEGIN
  U0 : sub
    PORT MAP (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      in1_TVALID => in1_TVALID,
      in1_TREADY => in1_TREADY,
      in1_TDATA => in1_TDATA,
      in1_TLAST => in1_TLAST,
      in2_TVALID => in2_TVALID,
      in2_TREADY => in2_TREADY,
      in2_TDATA => in2_TDATA,
      in2_TLAST => in2_TLAST,
      out_r_TVALID => out_r_TVALID,
      out_r_TREADY => out_r_TREADY,
      out_r_TDATA => out_r_TDATA,
      out_r_TLAST => out_r_TLAST
    );
END design_1_sub_0_0_arch;
