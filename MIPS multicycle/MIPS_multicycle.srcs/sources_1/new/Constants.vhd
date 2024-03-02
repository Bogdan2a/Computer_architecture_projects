----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2023 14:21:28
-- Design Name: 
-- Module Name: Constants - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------




library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package ProcMem_definitions is
  -- globals
  constant width : natural := 32;
  -- definitions for regfile
  constant regfile_depth : positive := 32; -- register file depth = 2**adrsize
  constant regfile_adrsize : positive := 5; -- address vector size = log2(depth)
end ProcMem_definitions;

