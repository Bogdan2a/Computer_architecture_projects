----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2023 17:48:19
-- Design Name: 
-- Module Name: Acumulator - Behavioral
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


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Acumulator is
    Port (
        clk : in  std_logic;
        reset : in std_logic;
        input : in  std_logic_vector(15 downto 0);
        output : out std_logic_vector(15 downto 0)
    );
end Acumulator;

architecture Behavioral of Acumulator is
    signal accumulator_reg : std_logic_vector(15 downto 0) := (others => '0');
begin
    process (clk, reset)
    begin
        if reset = '1' then
            accumulator_reg <= (others => '0'); -- Reset condition
        elsif rising_edge(clk) then
            accumulator_reg <= input; -- Update accumulator on the rising edge of the clock
        end if;
    end process;

    output <= accumulator_reg; -- Output the value of the accumulator
end Behavioral;