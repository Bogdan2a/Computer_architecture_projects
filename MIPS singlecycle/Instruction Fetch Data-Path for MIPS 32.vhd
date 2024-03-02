----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2023 10:17:59
-- Design Name: 
-- Module Name: Instruction Fetch Data Path - Behavioral
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

entity Instruction_Fetch_Data_Path is
    Port ( jump_adr : in STD_LOGIC_VECTOR (15 downto 0); --LeftAdder
           branch_adr : in STD_LOGIC_VECTOR (15 downto 0); --RightAdder
           instruction : out STD_LOGIC_VECTOR (15 downto 0); --InstructionActual
           pc_plus_1 : out STD_LOGIC_VECTOR (15 downto 0); --LeftAdder
           en : in STD_LOGIC; --RegEnable
           clk : in STD_LOGIC; --clk
           reset : in STD_LOGIC; --en
           jump : in STD_LOGIC; --Jump
           pcsrc : in STD_LOGIC); --PcSrc
end Instruction_Fetch_Data_Path;

architecture Behavioral of Instruction_Fetch_Data_Path is

component ROM_fara_altele is
    Port ( adr : in STD_LOGIC_VECTOR (15 downto 0);
           d : out STD_LOGIC_VECTOR (15 downto 0));
end component;

signal counter: STD_LOGIC_VECTOR(15 downto 0);
--signal ce: STD_LOGIC;
signal counter_plus_1: STD_LOGIC_VECTOR(15 downto 0);
signal mux1_out: STD_LOGIC_VECTOR(15 downto 0);
signal mux2_out: STD_LOGIC_VECTOR(15 downto 0);
signal Q: STD_LOGIC_VECTOR(15 downto 0);
signal jumpaux: STD_LOGIC_VECTOR(15 downto 0);
signal instraux: STD_LOGIC_VECTOR(15 downto 0);
begin

    process(clk,reset, en) --PC
	begin
		if(reset='1') then 
		Q<=x"0000";
		elsif rising_edge(clk) then
		if (en='1') then 
		Q<= counter;
		end if;
		end if;
end process;


Instruction_Memory: ROM_fara_altele port map(adr=>Q,d=>instraux); --ROM
instruction<=instraux;
process(Q)
begin
counter_plus_1<=Q+'1'; --adder
pc_plus_1 <= counter_plus_1;
end process;

process(pcsrc,branch_adr,counter_plus_1) --mux1
begin
case pcsrc is
when '0'=> mux1_out<=counter_plus_1;
when others=> mux1_out<=branch_adr;
end case;
end process;

process(jump,jump_adr,mux1_out) --mux2
begin
case jump is
when '0'=> counter<=mux1_out;
when others=> jumpaux<="000"&instraux(12 downto 0);
 counter<=jumpaux;

end case;
end process;

end Behavioral;
