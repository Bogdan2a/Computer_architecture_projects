----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2023 00:28:03
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (3 downto 0));
end PC;

architecture Behavioral of PC is
    signal temp_counter: unsigned(3 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            temp_counter <= (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                if temp_counter = "1111" then -- Check if counter reaches 15
                    temp_counter <= (others => '0'); -- Reset to 0
                else
                    temp_counter <= temp_counter + 1; -- Increment counter
                end if;
            end if;
        end if;
    end process;

    counter <= std_logic_vector(temp_counter);
end Behavioral;
