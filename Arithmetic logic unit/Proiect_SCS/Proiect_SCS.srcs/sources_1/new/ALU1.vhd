----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.11.2023 16:59:40
-- Design Name: 
-- Module Name: ALU1 - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU1 is
    Port (
        A, B : in  std_logic_vector(7 downto 0);
        AluCtrl1 : in  std_logic_vector(3 downto 0);
        result : out std_logic_vector(15 downto 0)
    );
end ALU1;

architecture Behavioral of ALU1 is
begin
    process(A, B, AluCtrl1)
        variable temp : std_logic_vector(7 downto 0);
    begin
        case AluCtrl1 is
            when "0000" =>  -- Add in 2s complement
                temp := std_logic_vector(signed(A) + signed(B));
                result <= "00000000" & temp(7 downto 0);
            when "0001" =>  -- Subtract in 2s complement
                temp := std_logic_vector(signed(A) - signed(B));
                result <= "00000000" & temp(7 downto 0);
            when "0010" =>  -- Increment
                temp := std_logic_vector(signed(A) + 1);
                result <= "00000000" & temp(7 downto 0);
            when "0011" =>  -- Decrement
                temp := std_logic_vector(signed(A) - 1);
                result <= "00000000" & temp(7 downto 0);
            when "0100" =>  -- AND logical
                result <= "00000000" & (A and B);
            when "0101" =>  -- OR logical
                result <= "00000000" & (A or B);
            when "0110" =>  -- NOT
                result <= "00000000" & (not A);
            when "0111" =>  -- Shift Left
                result <= "0000000" & A(7 downto 0) & "0";
            when "1000" =>  -- Shift Right
                result <= "000000000" & A(7 downto 1);
            when others =>
                result <= (others => '0');
        end case;
    end process;
end Behavioral;
