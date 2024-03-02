----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.04.2023 11:06:39
-- Design Name: 
-- Module Name: Instruction_Decode_Data_Path_for_MIPS_32 - Behavioral
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

entity Instruction_Decode_Data_Path_for_MIPS_32 is
    Port ( instr : in STD_LOGIC_VECTOR (15 downto 0);
           RegWrite : in STD_LOGIC;    
           wd : in STD_LOGIC_VECTOR(15 downto 0);   
           rd1 : out STD_LOGIC_VECTOR (15 downto 0);
           rd2 : out STD_LOGIC_VECTOR (15 downto 0);
           ExtOp : in STD_LOGIC;
           func : out STD_LOGIC_VECTOR (2 downto 0);
           Ext_Imm : out STD_LOGIC_VECTOR (15 downto 0);
           sa : out STD_LOGIC;
           clk : in STD_LOGIC;
           RegDst : in STD_LOGIC);

end Instruction_Decode_Data_Path_for_MIPS_32;

architecture Behavioral of Instruction_Decode_Data_Path_for_MIPS_32 is

signal ra1 : STD_LOGIC_VECTOR(2 downto 0);
signal ra2 : STD_LOGIC_VECTOR(2 downto 0);
signal wa : STD_LOGIC_VECTOR(2 downto 0);

type reg_array is array (0 to 7) of std_logic_vector(15 downto 0);
signal reg_file : reg_array:=(0=>x"0000",
			              1=>x"0001",
		                  2=>x"0002",
			              3=>x"0003",	
			              4=>x"0004",	
			              5=>x"0005",	
			              6=>x"0005",
			              others=>x"0007");

begin

process(RegDst,instr,wa)
begin
case RegDst is
when '0'=>wa<=instr(9 downto 7);
when others=>wa<=instr(6 downto 4);
end case;
end process;

ra1<=instr(12 downto 10);
ra2<=instr(9 downto 7);

process(clk)
    begin
        if rising_edge(clk) then
        if RegWrite = '1' then
            reg_file(conv_integer(wa)) <= wd;
end if;
end if;
end process;

rd1 <= reg_file(conv_integer(ra1));
rd2 <= reg_file(conv_integer(ra2));

sa<=instr(3);
func<=instr(2 downto 0);

process(ExtOp,instr)
begin
case ExtOp is
when '0'=>Ext_Imm<="000000000" & instr(6 downto 0);
when others=>
    if(instr(6)='1') then Ext_Imm<="111111111" & instr(6 downto 0);
    else Ext_Imm<="000000000" & instr(6 downto 0);
    end if;
end case;
end process;

end Behavioral;
