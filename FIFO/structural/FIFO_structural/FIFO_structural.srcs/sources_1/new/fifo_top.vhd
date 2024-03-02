----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2023 10:49:24
-- Design Name: 
-- Module Name: fifo_top - Behavioral
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

entity fifo_top is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           rd : in STD_LOGIC;
           wr : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           empty : out STD_LOGIC;
           full : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end fifo_top;

architecture Behavioral of fifo_top is

component fifo_ctrl is
    Port ( rd : in STD_LOGIC;
           wr : in STD_LOGIC;
           rdinc : out STD_LOGIC;
           wrinc : out STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           empty : out STD_LOGIC;
           full : out STD_LOGIC);
end component;

component fifo8x8 is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           rd : in STD_LOGIC;
           wr : in STD_LOGIC;
           rdinc : in STD_LOGIC;
           wrinc : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;
signal rdinc,wrinc: std_logic ;
begin

fifocontrol: fifo_ctrl port map (rd=>rd,wr=>wr,rdinc=>rdinc,wrinc=>wrinc,clk=>clk,rst=>rst,empty=>empty,full=>full);
fifo88: fifo8x8 port map (data_in=>data_in,rd=>rd,wr=>wr,rdinc=>rdinc,wrinc=>wrinc,clk=>clk,rst=>rst,data_out=>data_out);

end Behavioral;
