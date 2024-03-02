----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2023 00:47:11
-- Design Name: 
-- Module Name: ControlUnit - Behavioral
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

entity ControlUnit is
    Port ( instruction : in STD_LOGIC_VECTOR (20 downto 0);
           SelB : out STD_LOGIC;
           AluSw : out STD_LOGIC;
           AluCtrl1 : out STD_LOGIC_VECTOR (3 downto 0);
           AluCtrl2 : out STD_LOGIC_VECTOR (3 downto 0));
end ControlUnit;

architecture Behavioral of ControlUnit is
signal opcode: std_logic_vector(3 downto 0);
signal selection: std_logic;
begin
    opcode<=instruction(20 downto 17);
    selection<=instruction(0); 
    
    process(opcode,selection)
    begin
        case opcode is
            when "0000" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";
            when "0001" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";
            when "0010" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";
            when "0011" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";
            when "0100" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";  
            when "0101" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";  
            when "0110" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";  
            when "0111" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";  
            when "1000" =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= opcode;
               AluCtrl2 <= "1111";   
            when "1001" =>
               SelB <= selection;
               AluSw <= '1';
               AluCtrl1 <= "1111";
               AluCtrl2 <= opcode;   
            when "1010" =>
               SelB <= selection;
               AluSw <= '1';
               AluCtrl1 <= "1111";
               AluCtrl2 <= opcode; 
            when others =>
               SelB <= selection;
               AluSw <= '0';
               AluCtrl1 <= "1111";
               AluCtrl2 <= "1111";              
         end case;
    end process;
    
end Behavioral;
