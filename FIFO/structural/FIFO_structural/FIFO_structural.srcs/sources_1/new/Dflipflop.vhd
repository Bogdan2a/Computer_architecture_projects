----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.11.2023 19:00:18
-- Design Name: 
-- Module Name: Dflipflop - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Dflipflop is
Port ( 
        d : in std_logic_vector (7 downto 0);
        q : out std_logic_vector (7 downto 0);
        clk : in std_logic;
        enable : in std_logic;
        reset : in std_logic
    );
end Dflipflop;

architecture Behavioral of Dflipflop is

begin
    process(clk, reset)
    begin
        if reset = '1' then
            q <= (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                q <= d;
            end if;
        end if;
    end process;

end Behavioral;
