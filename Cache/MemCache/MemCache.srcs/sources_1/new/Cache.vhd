----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2024 21:06:23
-- Design Name: 
-- Module Name: Cache - Behavioral
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

entity Cache is
    Port (
        clk: in std_logic;
        we: in std_logic;
        re: in std_logic;
        addr: in std_logic_vector(15 downto 0);
        dataIn: in std_logic_vector(15 downto 0);
        dataOut: out std_logic_vector(15 downto 0);
        hit: out std_logic
    );
end Cache;

architecture Behavioral of Cache is
    type tag_array is array(0 to 127) of std_logic_vector(7 downto 0);
    signal tagMemory: tag_array := (
        "00000000", "00000001",
        others => "00000000"
    );

    type cache_array is array(0 to 127) of std_logic_vector(15 downto 0);
    signal cacheMemory: cache_array := (
        x"0311", x"2002", x"1111",
        --785   8194  4369
        others => x"0000"
    );

    type main_array is array(0 to 4095) of std_logic_vector(15 downto 0);
    signal mainMemory: main_array := (
        x"0311", x"2002",
        others => x"0000"
    );

    signal tag: std_logic_vector(7 downto 0) := "00000000";

begin
    process(clk)
        variable index: integer;
        variable hitSignal: std_logic := '0';
        variable tagDinMem: std_logic_vector(7 downto 0) := "00000000";
    begin
        if rising_edge(clk) then
            index := conv_integer(unsigned(addr(7 downto 0)));
            tag <= addr(15 downto 8);
            tagDinMem := tagMemory(index);

            if tagDinMem = tag then
                hitSignal := '1';
            else
                hitSignal := '0';
            end if;

            -- read
            if re = '1' then
                if hitSignal = '1' then
                    dataOut <= cacheMemory(index);
                else
                    tagMemory(index) <= tag;
                    cacheMemory(index) <= mainMemory(conv_integer(addr));
                    dataOut <= mainMemory(conv_integer(addr));
                end if;
                hit <= hitSignal;
            end if;

            -- write
            if we = '1' then
                if hitSignal = '1' then
                    mainMemory(conv_integer(addr)) <= dataIn;
                    cacheMemory(index) <= dataIn;
                    dataOut <= dataIn;
                else
                    mainMemory(conv_integer(addr)) <= dataIn;
                    cacheMemory(index) <= dataIn;
                    dataOut <= dataIn;
                    tagMemory(index) <= tag;
                end if;
                hit <= hitSignal;
            end if;
        end if;
    end process;

end Behavioral;
