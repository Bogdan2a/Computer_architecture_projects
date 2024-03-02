----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2023 17:30:14
-- Design Name: 
-- Module Name: ROM_fara_altele - Behavioral
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
-- add $2, $3, 2   B"000_010_011_001_0_000" 0990    2+3=5               merge
-- sub $4, $2, 2   B"000_011_010_001_0_001" 0D11      3-2=1             merge
-- sll $4, $1, 2   B"000_100_001_010_1_010" 10AA       4x2=8   
-- srl $4, $1, 2   B"000_100_001_010_1_011" 10AB       4:2=2         merge
-- and $2, $3, 2   B"000_010_011_001_0_100" 0994       2 and 3 = 2      merge
-- or $2, $3, 2    B"000_010_011_001_0_101" 0995        2 or 3 = 3    merge
-- xor $2, $3, 2   B"000_010_011_001_0_110" 0996        2 xor 3 = 1    merge
-- slt $3, $2, 2   B"000_010_011_001_0_111" 0997        2<3     1    merge

-- addi $2, 2, $1  B"001_011_010_000_0_001" 2D01       3+1=4
-- andi $2, 2, $1  B"010_011_010_000_0_001" 4D01       3 and 1 = 1
-- ori $2, 2, $1   B"011_011_010_000_0_001" 6D01       3 or 1  = 3
-- lw $2, 2, $1    B"100_011_010_000_0_001" 8D01       
-- sw $2, 2, $1    B"101_011_010_000_0_001" AD01       
-- beq $2, 2,$1    B"110_101_101_000_0_001" D681

-- j 14                     B"111_000_000_000_0_000"   E000 
entity ROM_fara_altele is
    Port ( adr : in STD_LOGIC_VECTOR (15 downto 0);
           d : out STD_LOGIC_VECTOR (15 downto 0));
end ROM_fara_altele;

architecture Behavioral of ROM_fara_altele is

type memorie is array (0 to 30) of std_logic_vector(15 downto 0);
signal stocare:memorie :=(0=>x"0990", --add
			              1=>x"0D11", --sub
		                  2=>x"10AA", --sll
			              3=>x"10AB", --srl
			              4=>x"0994", --and
			              5=>x"0995", --or
			              6=>x"0996", --xor
		                  7=>x"0997", --slt
			              8=>x"2D01", --addi
		                  9=>x"4D01", --andi
			              10=>x"6D01",--ori
			              11=>x"8D01",--lw
			              12=>x"AD01",--sw
			              13=>x"D681",--beq
			              14=>x"0000",--
			              15=>x"0000",--
			              16=>x"E000",--jump
			              17=>x"0000",
			              others=>x"FFFF");


begin

d<=stocare(conv_integer(adr));

end Behavioral;
