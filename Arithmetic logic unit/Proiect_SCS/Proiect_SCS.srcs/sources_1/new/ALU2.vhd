----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2023 17:33:54
-- Design Name: 
-- Module Name: ALU2 - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU2 is
    Port (
        A, B : in  std_logic_vector(7 downto 0);
        AluCtrl2 : in  std_logic_vector(3 downto 0);
        result : out std_logic_vector(15 downto 0)
    );
end ALU2;

architecture Behavioral of ALU2 is
    signal temp : integer range 0 to 255; 
    signal resultaux: std_logic_vector(7 downto 0);
begin
    process(A, B, AluCtrl2)
    begin
        case AluCtrl2 is
            when "1001" =>  -- Mul
                temp <= to_integer(unsigned(A)) * to_integer(unsigned(B));
                resultaux <= std_logic_vector(to_unsigned(temp, 8));
            
            when "1010" =>  -- Div
                if B /= x"00" then  --division by zero
                    temp <= to_integer(unsigned(A)) / to_integer(unsigned(B));
                    resultaux <= std_logic_vector(to_unsigned(temp, 8));
                else
                    resultaux <= (others => '0');
                end if;
            
            when others => 
                resultaux <= (others => '0');
        end case;
        result <= "00000000" & resultaux;
    end process;
end Behavioral;
