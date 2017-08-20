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
-- $RCSfile: auk_dspip_r22sdf_counter.vhd,v $
-- $Source: /cvs/uksw/dsp_cores/FFT/src/rtl/lib/r22sdf/auk_dspip_r22sdf_counter.vhd,v $
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
-- counter
--
-- $Log: auk_dspip_r22sdf_counter.vhd,v $
-- Revision 1.5.2.1  2007/03/28 14:44:06  kmarks
-- SPR239147 - consecutive N=16 transforms gives errors
--
-- Revision 1.5  2007/01/15 18:14:44  kmarks
-- changes for optimisation of memory
--
-- Revision 1.4  2006/12/05 10:54:43  kmarks
-- updated from the 6.1 branch
--
-- Revision 1.3.2.1  2006/09/28 16:47:29  kmarks
-- fmax improvements SPR 219316
--
-- Revision 1.3  2006/09/06 14:39:39  kmarks
-- added global clock enable and error ports to atlantic interfaces. Added checkbox on GUI for Global clock enable . Some bug fixed for the new architecture.
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

library work;
use work.auk_dspip_math_pkg.all;
use work.auk_dspip_r22sdf_lib_pkg.all;



entity auk_dspip_r22sdf_counter is

  generic (
    MAX_FFTPTS_g : natural := 1024;
    INPUT_FORMAT_g : string := "NATURAL_ORDER"
    );

  port (
    clk         : in  std_logic;
    reset       : in  std_logic;
    -- start/stop processing
    enable      : in  std_logic;
    in_valid    : in  std_logic;
    --number of points in the fft
    in_sop : in std_logic;
    in_eop : in std_logic;
    in_fftpts   : in  std_logic_vector(log2_ceil(MAX_FFTPTS_g) downto 0);
    in_radix_2  : in  std_logic;
    in_control  : in  std_logic_vector(log2_ceil(MAX_FFTPTS_g) - 1 downto 0);
    -- array of control signals to the stages.
    out_control : out std_logic_vector(log2_ceil(MAX_FFTPTS_g) - 1 downto 0)
    );

end entity auk_dspip_r22sdf_counter;

architecture rtl of auk_dspip_r22sdf_counter is

  signal control_s : std_logic_vector(log2_ceil(MAX_FFTPTS_g) - 1 downto 0);
  signal radix_2   : std_logic;

  signal cnt : natural range 0 to MAX_FFTPTS_g;

  signal curr_fftpts_minus_1 : std_logic_vector(log2_ceil(MAX_FFTPTS_g)  downto 0);
  signal curr_fftpts_minus_2 : std_logic_vector(log2_ceil(MAX_FFTPTS_g) - 1 downto 0);
  signal curr_fftpts_minus_2_tmp : std_logic_vector(2*log2_ceil(MAX_FFTPTS_g) +1 downto 0);

  -- hyper optimization signals
  type control_s_array_type is array (1 downto 0) of std_logic_vector (log2_ceil(MAX_FFTPTS_g) - 1 downto 0);
  signal control_s_array, control_s_reset_value, control_s_max   : control_s_array_type;
  signal control_s_en, control_s_reset_c, control_s_sel     : std_logic;

begin
  out_control <= control_s;

  control_s_en <= '1' when (enable = '1' and in_valid = '1') else
                  '0';
  control_s_reset_c <= in_sop; 
  control_s_array_gen : for j in 0 to 1 generate
  begin
    control_s_reset_value(j) <= std_logic_vector(unsigned(in_control) + j + 1);
    control_s_max(j) <= in_control; -- = control_s_reset_value(j) - 1 - j
    control_s_inst : counter_module
    generic map (COUNTER_WIDTH   => log2_ceil(MAX_FFTPTS_g),
             COUNTER_STAGE_WIDTH => 5,
             COUNT_STEP          => j+1)
    port map (clk         => clk,
              clken       => control_s_en,
              reset       => reset,
              reset_c     => control_s_reset_c,
              reset_value => control_s_reset_value(j),
              counter_max => control_s_max(j),
              counter_out => control_s_array(j));
  end generate control_s_array_gen;
  control_s_sel_proc : process (clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        control_s_sel <= '0';
      elsif control_s_en = '1' then
        control_s_sel <= in_radix_2;
      end if;
    end if;
  end process;
  control_s <= (others=>'0') when (in_sop = '0' and in_eop = '1' and INPUT_FORMAT_g = "BIT_REVERSED") else
               control_s_array(1) when control_s_sel = '1' else
               control_s_array(0);

  
end architecture rtl;