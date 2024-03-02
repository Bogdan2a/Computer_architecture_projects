----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2023 10:15:34
-- Design Name: 
-- Module Name: fifo_ctrl - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo_ctrl is
    Port ( rd : in STD_LOGIC;
           wr : in STD_LOGIC;
           rdinc : out STD_LOGIC;
           wrinc : out STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           empty : out STD_LOGIC;
           full : out STD_LOGIC);
end fifo_ctrl;

architecture Behavioral of fifo_ctrl is

signal count: std_logic_vector (2 downto 0):="000";


begin


process(rst,clk,wr,rd)
begin
if rising_edge (clk) then
    if rst = '1' then 
            count<="000";
    else 
        if rd = '1' and wr='0'and count/="000" then 
                count<=count-1;
        end if;
        if wr='1' and rd='0' and count/="111"  then
                count<=count+1;
        end if;
    end if;
    if rd ='1' then
        rdinc<='1';
    else
        rdinc<='0';
    end if;
end if;
end process;
full<='1' when count="111" and rst='0' else '0';
empty<='1' when (count="000" or rst='1') else '0';
--rdinc<='1' when (rd='1' and rst='0') else '0';
wrinc<='1' when (wr='1' and rst='0') else '0';


end Behavioral;
