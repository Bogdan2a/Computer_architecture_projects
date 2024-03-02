----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2023 00:36:14
-- Design Name: 
-- Module Name: InstructionRegister - Behavioral
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

entity InstructionRegister is
    Port ( adr : in STD_LOGIC_VECTOR (3 downto 0);
           d : out STD_LOGIC_VECTOR (20 downto 0));
end InstructionRegister;

architecture Behavioral of InstructionRegister is
type memorie is array (0 to 30) of std_logic_vector(20 downto 0);
signal stocare:memorie :=(0=>B"0000_00000101_11111111_0",
			              1=>B"0000_00000001_00000000_1",
			              2=>B"0001_00000100_00000110_0",
			              3=>B"0010_00010010_00000000_0",
			              4=>B"0011_00100000_00000000_0",
			              5=>B"0100_00000111_00000101_0",
			              6=>B"0101_00001011_00000000_1",
			              7=>B"0110_11001000_00000000_0",
			              8=>B"0111_00001011_00000000_0",
			              9=>B"1000_00101000_00000000_0",
			              10=>B"1001_00000011_00000101_0",
			              11=>B"1010_00001110_00000111_0",
			              others=>B"0000_00000000_00000000_0");


begin
d<=stocare(conv_integer(adr));
end Behavioral;
