----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.11.2023 14:22:42
-- Design Name: 
-- Module Name: PC - Behavioral
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


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
-- use package
USE work.procmem_definitions.ALL;
ENTITY pc IS
PORT (
clk : IN STD_ULOGIC;
rst_n : IN STD_ULOGIC;
pc_in : IN STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
PC_en : IN STD_ULOGIC;
pc_out : OUT STD_ULOGIC_VECTOR(width-1 DOWNTO 0) );
END pc;
ARCHITECTURE behave OF pc IS
BEGIN
proc_pc : PROCESS(clk, rst_n)
VARIABLE pc_temp : STD_ULOGIC_VECTOR(width-1 DOWNTO 0);
BEGIN
IF rst_n = '0' THEN
pc_temp := (OTHERS => '0');
ELSIF RISING_EDGE(clk) THEN
IF PC_en = '1' THEN
pc_temp := pc_in;
END IF;
END IF;
pc_out <= pc_temp;
END PROCESS;
END behave; 