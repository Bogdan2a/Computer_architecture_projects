library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity testbench_fifo_memory is
end testbench_fifo_memory;

architecture Tb of testbench_fifo_memory is

component fifo_top is
    Port ( data_in : in STD_LOGIC_VECTOR (7 downto 0);
           rd : in STD_LOGIC;
           wr : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           empty : out STD_LOGIC;
           full : out STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

constant T : time := 20 ns;

signal clk, rst, rd, wr, empty, full : STD_LOGIC := '0';
signal data_in, data_out : STD_LOGIC_VECTOR (7 downto 0) := (others => '0'); 

begin

   -- data_in<="00000000";
    clk <= not clk after T / 2;
    
    rst <= '1', '0' after 3 * T;
    wr <= '1', '0' after 13 * T;
    rd <= '0', '1' after 15 * T;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '0' then
                data_in <= data_in + 1;
            end if;
        end if;
    end process;
    
    uut : fifo_top port map (
           data_in =>data_in,
           rd =>rd,
           wr =>wr,
           clk=>clk,
           rst=>rst,
           empty=>empty,
           full=>full,
           data_out=>data_out
    );
    

end Tb;