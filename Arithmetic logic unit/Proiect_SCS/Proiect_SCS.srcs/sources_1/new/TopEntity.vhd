----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2023 01:01:21
-- Design Name: 
-- Module Name: TopEntity - Behavioral
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

entity TopEntity is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC_VECTOR (4 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           cat : out  STD_LOGIC_VECTOR (6 downto 0));
end TopEntity;

architecture Behavioral of TopEntity is
component ControlUnit is
    Port ( instruction : in STD_LOGIC_VECTOR (20 downto 0);
           SelB : out STD_LOGIC;
           AluSw : out STD_LOGIC;
           AluCtrl1 : out STD_LOGIC_VECTOR (3 downto 0);
           AluCtrl2 : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component ALU1 is
    Port (
        A, B : in  std_logic_vector(7 downto 0);
        AluCtrl1 : in  std_logic_vector(3 downto 0);
        result : out std_logic_vector(15 downto 0)
    );
end component;
component ALU2 is
    Port (
        A, B : in  std_logic_vector(7 downto 0);
        AluCtrl2 : in  std_logic_vector(3 downto 0);
        result : out std_logic_vector(15 downto 0)
    );
end component;
component Acumulator is
    Port (
        clk : in  std_logic;
        reset : in std_logic;
        input : in  std_logic_vector(15 downto 0);
        output : out std_logic_vector(15 downto 0)
    );
end component;
component Decoder is
    Port (
        input : in  std_logic_vector(15 downto 0);
        output: out std_logic_vector(15 downto 0)
    );
end component;
component Encoder is
    Port (
            input : in  std_logic_vector(7 downto 0);
            output: out std_logic_vector(7 downto 0)
        );
end component;
component InstructionRegister is
    Port ( adr : in STD_LOGIC_VECTOR (3 downto 0);
           d : out STD_LOGIC_VECTOR (20 downto 0));
end component;
component PC is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           enable : in STD_LOGIC;
           counter : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component SSD is
    Port ( clk : in STD_LOGIC;
           sw: in STD_LOGIC_VECTOR (15 downto 0);
           an : out STD_LOGIC_VECTOR (3 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0));
end component;
component mono_pulse_generator is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           en : out STD_LOGIC);
end component;

signal en,rst,SelB,AluSw: std_logic;
signal count: std_logic_vector(3 downto 0);
signal instr: std_logic_vector(20 downto 0);
signal AluCtrl1, AluCtrl2: std_logic_vector(3 downto 0);
signal BInput: std_logic_vector(7 downto 0);
signal AluRes1, AluRes2, AluRes, Acum, SSDOutput: std_logic_vector(15 downto 0);
begin

    DebouncerCount: mono_pulse_generator port map (clk, btn(0), en);
    DebouncerReset: mono_pulse_generator port map (clk, btn(1), rst);
    ProgramCounter: PC port map (clk, rst, en, count);
    InstructionReg: InstructionRegister port map (count, instr);
    MainControlUnit: ControlUnit port map (instr, SelB, AluSw, AluCtrl1, AluCtrl2);
    ALU_I: ALU1 port map (instr(16 downto 9), BInput, AluCtrl1, AluRes1);

    ALU_II: ALU2 port map (instr(16 downto 9), BInput, AluCtrl2, AluRes2);
        process (AluSw, AluRes1, AluRes2)
        begin
        if AluSw='0' then 
            AluRes <= AluRes1; 
          else 
            AluRes <= AluRes2; 
        end if;
        end process;
    Acumulat: Acumulator port map (en, rst, AluRes, Acum);
        process (SelB, instr, Acum)
        begin
        if SelB='0' then 
            BInput <= instr(8 downto 1); 
          else 
            BInput <= Acum(7 downto 0); 
        end if;
        end process;
    SSD1: ssd port map ( clk, SSDOutput, an, cat);
    
    process(count,Acum)
    begin
        case sw(1 downto 0) is
            when "00"=> SSDOutput <= AluRes;
            when "01"=> SSDOutput <= Acum;
            when "10"=> SSDOutput <= "00000000" & BInput;
            when others=> SSDOutput <= "000000000000" & count;
        end case;
        if AluRes(7)='1' then
            led(0)<='1';
        end if;  
    end process;
end Behavioral;
