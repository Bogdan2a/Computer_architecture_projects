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
use IEEE.STD_LOGIC_ARITH.ALL;


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
signal fifo_ctrl: std_logic;
signal fifo_count: integer:=0;
begin

process (clk, rst)
    begin
        if rst = '1' then
            fifo_count <= 0;
        elsif rising_edge(clk) then
            if rd = '1' and wr = '0' and fifo_count>0 then
                    fifo_count <= fifo_count - 1;             
            elsif wr = '1' and rd = '0' and fifo_count <8 then
                    fifo_count <= fifo_count + 1; 
            end if;
        end if;
    end process;
empty<='1' when  fifo_count=0 else '0';
full<='1' when fifo_count=8 else '0';
rdinc<='1' when fifo_count /=0 and rd='1' else '0';
wrinc<='1' when fifo_count /=8 and wr='1' else '0';
end Behavioral;
