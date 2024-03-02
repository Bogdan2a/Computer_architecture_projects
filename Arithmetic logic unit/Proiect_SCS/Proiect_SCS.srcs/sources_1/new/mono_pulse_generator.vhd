----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.03.2023 19:32:12
-- Design Name: 
-- Module Name: mono_pulse_generator - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mono_pulse_generator is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           en : out STD_LOGIC);
end mono_pulse_generator;

architecture Behavioral of mono_pulse_generator is
signal Q1 : std_logic;
signal Q2 : std_logic;
signal Q3 : std_logic;
signal counter: std_logic_vector(15 downto 0);

begin

process(clk, btn)
begin
if rising_edge(clk) then
counter <= counter + '1';
end if;

end process;

process(clk, btn)
begin
if rising_edge(clk) then
if counter = x"ffff" then
Q1 <= btn;
end if;
Q2 <= Q1;
Q3 <= Q2;
end if;
end process;

en<= Q2 and not(Q3);

end Behavioral;