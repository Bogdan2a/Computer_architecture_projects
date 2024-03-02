----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.01.2024 14:03:15
-- Design Name: 
-- Module Name: tb_cache - Behavioral
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

entity cache_tb is
end cache_tb;

architecture arch_cache_tb of cache_tb is
  component Cache is
    Port (
      clk     : in std_logic;
      we      : in std_logic;
      re      : in std_logic;
      addr    : in std_logic_vector(15 downto 0);
      dataIn  : in std_logic_vector(15 downto 0);
      dataOut : out std_logic_vector(15 downto 0);
      hit     : out std_logic
    );
  end component;

  constant CLK_PERIOD: time := 10 ns;

  signal clk: std_logic := '0';
  signal we: std_logic := '0';
  signal re: std_logic := '0';
  signal addr: std_logic_vector(15 downto 0) := "0000000000000000";
  signal dataIn: std_logic_vector(15 downto 0) := "0000000000000000";
  signal dataOut: std_logic_vector(15 downto 0) := "0000000000000000";
  signal hit: std_logic := '0';

begin
  mem: Cache port map (
    clk     => clk,
    we      => we,
    re      => re,
    addr    => addr,
    dataIn  => dataIn,
    dataOut => dataOut,
    hit     => hit
  );

  clk_process: process
  begin
    while true loop
      clk <= '0';
      wait for CLK_PERIOD / 2;
      clk <= '1';
      wait for CLK_PERIOD / 2;
    end loop;
  end process;

  stimulus_process: process
  begin
    wait for 10 ns;
    re <= '1'; we <= '0'; addr <= "0000000000000010";
    --2
    wait for 10 ns;
    re <= '1'; we <= '0'; addr <= "0000000100000000";
    --256
    wait for 20 ns;
    re <= '1'; we <= '0'; addr <= "0000001000000000";
    --512
    wait for 10 ns;
    re <= '0'; we <= '1'; addr <= "0000000100000000"; dataIn <= x"8888";
    --256
    wait for 10 ns;
    re <= '0'; we <= '1'; addr <= "0000010000000000"; dataIn <= x"9999";
    --1024
    wait;
  end process;

end arch_cache_tb;
