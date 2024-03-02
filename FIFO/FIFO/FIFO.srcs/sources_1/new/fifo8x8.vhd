----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.11.2023 10:29:27
-- Design Name: 
-- Module Name: fifo8x8 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo8x8 is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           rd : in STD_LOGIC;
           wr : in STD_LOGIC;
           rdinc : in STD_LOGIC;
           wrinc : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end fifo8x8;

architecture Behavioral of fifo8x8 is
type fifo_type is array(0 to 7) of std_logic_vector(7 downto 0);
signal fifo : fifo_type:=(Others=>(Others=>'0')); 
signal wrptr,rdptr: integer :=0;

begin

process(rd,wr,clk,rst,rdinc,wrinc)
begin
if rising_edge(clk) then
    if(rst= '1') then
    wrptr<=0;rdptr<=0;fifo<=(Others=>(Others=>'0'));
    else
        if(rdinc ='1') then 
            if rdptr /=7 then
                rdptr<=rdptr+1;
            else    
                rdptr<=0;
            end if;
        end if;
        if(wrinc ='1') then 
            if wrptr /=7 then
                wrptr<=wrptr+1;
            else
                wrptr<=0;
            end if;
        end if;
        if wr='1' then
            fifo(wrptr)<=data_in; 
        end if;
    end if;
end if;
end process;
data_out<=fifo(rdptr) when rd='1' else (Others=>'Z');


end Behavioral;
