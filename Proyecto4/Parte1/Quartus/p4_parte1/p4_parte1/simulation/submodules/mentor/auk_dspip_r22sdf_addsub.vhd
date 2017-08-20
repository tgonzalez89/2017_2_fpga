-- (C) 2001-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License Subscription 
-- Agreement, Altera MegaCore Function License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.


-------------------------------------------------------------------------
-------------------------------------------------------------------------
--
-- Revision Control Information
--
-- $RCSfile: auk_dspip_r22sdf_addsub.vhd,v $
-- $Source: /cvs/uksw/dsp_cores/FFT/src/rtl/lib/r22sdf/auk_dspip_r22sdf_addsub.vhd,v $
--
-- $Revision: #1 $
-- $Date: 2016/02/08 $
-- Check in by     : $Author: swbranch $
-- Author   :  kmarks
--
-- Project      :  auk_dspip_r22sdf
--
-- Description : 
--
-- Adder/ Subtractor module for the r22SDF
--
-- This module adds/subtracts datab to/from dataa, producing result
--
-- Optionally this module can be made to pipeline the adder to improve timing.
--
--
-- $Log: auk_dspip_r22sdf_addsub.vhd,v $
-- Revision 1.2.8.1  2007/02/16 17:23:25  kmarks
-- SPR223891 - cast to bit vector and back to std_logic_vector to force to 0 when undefined
--
-- Revision 1.2  2006/08/14 12:08:35  kmarks
-- *** empty log message ***
--
-- ALTERA Confidential and Proprietary
-- Copyright 2006 (c) Altera Corporation
-- All rights reserved
--
-------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lpm;
use lpm.lpm_components.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

use work.auk_dspip_r22sdf_lib_pkg.all;

entity auk_dspip_r22sdf_addsub is

  generic (
    DATAWIDTH_g : natural := 18;
    PIPELINE_g  : natural := 0;
    GROW_g      : natural := 1
    );

  port (
    clk    : in  std_logic;
    reset  : in  std_logic;
    clken  : in  std_logic;
    add    : in  std_logic;             -- 1 for add, 0 for subtract
    dataa  : in  std_logic_vector(DATAWIDTH_g - 1 downto 0);
    datab  : in  std_logic_vector(DATAWIDTH_g - 1 downto 0);
    result : out std_logic_vector(DATAWIDTH_g + GROW_g - 1 downto 0));

end entity auk_dspip_r22sdf_addsub;


architecture rtl of auk_dspip_r22sdf_addsub is

  signal result_s  : std_logic_vector (DATAWIDTH_g + GROW_g - 1 downto 0);
  signal dataa_ext : std_logic_vector(DATAWIDTH_g + GROW_g - 1 downto 0);
  signal datab_ext : std_logic_vector(DATAWIDTH_g + GROW_g - 1 downto 0);
  signal dataa_std : std_logic_vector(DATAWIDTH_g - 1 downto 0);
  signal datab_std : std_logic_vector(DATAWIDTH_g - 1 downto 0);

  -- signal for S10 pipeline and the pipeline module
  signal result_w : std_logic_vector (DATAWIDTH_g + GROW_g - 1 downto 0);
  
begin

  -- convert to bit_vector, then back to std_logic vector to force 'X' value to
  -- 0. This prevents warnings being printed out to modelsim
  datab_std <= to_stdLogicVector(to_bitVector(datab));
  dataa_std <= to_stdLogicVector(to_bitVector(dataa));

  -- grow data 
  dataa_ext <= std_logic_vector(resize(signed(dataa_std), DATAWIDTH_g + GROW_g));
  datab_ext <= std_logic_vector(resize(signed(datab_std), DATAWIDTH_g + GROW_g));

  -- pipelined version of the adder, on non-S10 device
  gen_pipeline : if PIPELINE_g > 0 and HYPER_OPTIMIZATION = 0 generate
  begin
    lpm_add_sub_component : lpm_add_sub
      generic map (
        lpm_direction      => "UNUSED",
        lpm_representation => "SIGNED",
        lpm_hint           => "ONE_INPUT_IS_CONSTANT = NO, CIN_USED = YES",
        lpm_pipeline       => PIPELINE_g,
        lpm_type           => "LPM_ADD_SUB",
        lpm_width          => DATAWIDTH_g+ GROW_g
        )
      port map (
        dataa   => dataa_ext,
        add_sub => add,
        datab   => datab_ext,
        clken   => clken,
        clock   => clk,
        aclr    => reset,
        result  => result_s
        );
  end generate gen_pipeline;

  -- pipelined version of the adder, on Stratix 10
  gen_pipeline_S10 : if PIPELINE_g > 0 and HYPER_OPTIMIZATION = 1 generate
  begin
    lpm_add_sub_component : lpm_add_sub -- use the lpm_add_sub in non-pipelined mode
      generic map (
        lpm_direction      => "UNUSED",
        lpm_representation => "SIGNED",
        lpm_hint           => "ONE_INPUT_IS_CONSTANT = NO, CIN_USED = NO",
        lpm_pipeline       => 0,
        lpm_type           => "LPM_ADD_SUB",
        lpm_width          => DATAWIDTH_g + GROW_g
        )
      port map (
        dataa   => dataa_ext,
        add_sub => add,
        datab   => datab_ext,
        result  => result_w
        );
    -- and add pipeline stages after
    result_s_pipe : hyper_pipeline_interface
    generic map (PIPELINE_STAGES => PIPELINE_g,
                 SIGNAL_WIDTH => DATAWIDTH_g + GROW_g)
    port map (clk              => clk,
              clken            => clken,
              reset            => reset,
              signal_w         => result_w,
              signal_pipelined => result_s);
  end generate gen_pipeline_S10;

  -- combinatorial adder.
  gen_non_pipeline : if PIPELINE_g = 0 generate
  begin
    lpm_add_sub_component : lpm_add_sub
      generic map (
        lpm_direction      => "UNUSED",
        lpm_representation => "SIGNED",
        lpm_hint           => "ONE_INPUT_IS_CONSTANT = NO, CIN_USED = NO",
        lpm_pipeline       => PIPELINE_g,
        lpm_type           => "LPM_ADD_SUB",
        lpm_width          => DATAWIDTH_g + GROW_g
        )
      port map (
        dataa   => dataa_ext,
        add_sub => add,
        datab   => datab_ext,
        result  => result_s
        );
  end generate gen_non_pipeline;


  result <= result_s;

end architecture rtl;

