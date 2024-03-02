----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2023 14:30:07
-- Design Name: 
-- Module Name: control_unit_tb - Behavioral
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

entity tb_mips_ctrl_unit is
end tb_mips_ctrl_unit;

architecture Tb of tb_mips_ctrl_unit is

component Main_Control_Unit is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           instruction : in STD_LOGIC_VECTOR (31 downto 0);
           MemRead : out STD_LOGIC;
           MemWrite : out STD_LOGIC;
           RegDst : out STD_LOGIC;
           RegWrite : out STD_LOGIC;
           AluSrcA : out STD_LOGIC;
           AluSrcB : out STD_LOGIC_VECTOR (1 downto 0);
           MemtoReg : out STD_LOGIC;
           IRWrite : out STD_LOGIC;
           PCWrite : out STD_LOGIC;
           AluOp : out STD_LOGIC_VECTOR (1 downto 0));
end component;

constant T : time := 20 ns;

signal clk, rst : STD_LOGIC := '0';

type instructions_t is array (0 to 10) of STD_LOGIC_VECTOR (31 downto 0);
signal instructions : instructions_t := (
    b"000000_00000_00001_00010_00000_100000", -- type R (add)
    b"000000_00000_00001_00010_00000_100010", -- type R (sub)
    b"000000_00000_00001_00010_00000_100100", -- type R (and)
    b"100011_00000_00001_0001000000100100", -- load
    b"101011_00000_00001_0001000000100100", -- store
    others => b"000000_00000_00001_00010_00000_100101" -- type R (or)
);

signal index, cycles_count : integer := 0;
signal MemRead, MemWrite, RegDst, RegWrite, AluSrcA, MemtoReg, IRWrite, PCWrite : STD_LOGIC := '0';
signal AluOp, AluSrcB : STD_LOGIC_VECTOR (1 downto 0) := "00";
signal current_instr : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');


begin

    rst <= '1', '0' after 6 * T;
    clk <= not clk after T / 2;
    
    process (clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
               cycles_count <= 0;
            else
                if cycles_count < 4 then
                    cycles_count <= cycles_count + 1;
                else
                    cycles_count <= 0;
                end if;
            end if;
        end if;
    end process;
    
    process (cycles_count)
    begin
        if cycles_count'event and cycles_count = 0 then
            index <= index + 1;
        end if;
    end process;    
    
    current_instr <= instructions(index);
    
    UUT : Main_Control_Unit port map (
        clk => clk,
        rst => rst,
        instruction => current_instr,
        MemRead => MemRead,
        MemWrite => MemWrite,
        RegDst => RegDst,
        RegWrite => RegWrite,
        AluSrcA => AluSrcA,
        AluSrcB => AluSrcB,
        MemtoReg => MemtoReg,
        IRWrite => IRWrite,
        PCWrite => PCWrite,
        AluOp => AluOp
    );

end Tb;
