----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.11.2023 10:29:24
-- Design Name: 
-- Module Name: MainControlUnit - Behavioral
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

entity Main_Control_Unit is
    Port (
            clk : in STD_LOGIC;
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
            AluOp : out STD_LOGIC_VECTOR (1 downto 0)
        );
end Main_Control_Unit;

architecture Behavioral of Main_Control_Unit is

    type STATE is (
        Fetch,
        Decode,
        Execute,
        Memory,
        WriteBack
    );

    signal curr_state : STATE := Fetch;
    signal next_state : STATE;
    signal opcode, func: STD_LOGIC_VECTOR(5 downto 0);

begin

opcode <= instruction(31 downto 26);
func <= instruction(5 downto 0);

process(clk,rst)
begin
    if rst = '1' then
        next_state <= Fetch;
    else
        if rising_edge(clk) and rst = '0' then
            case curr_state is 
                when Fetch =>
                    next_state <= Decode;
                when Decode =>
                    next_state <= Execute;
                when Execute =>
                    next_state <= Memory;
                when Memory =>
                    next_state <= WriteBack;
                when others =>
                    next_state <= Fetch;            
            end case;    
        end if;
     end if;
    curr_state <= next_state;
end process;


process(curr_state, opcode)
    begin
        case curr_state is
            when Fetch =>
                case opcode is
                    when "000000" =>
                        MemRead <= '1';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "01";
                        MemtoReg <= '0';
                        IRWrite <= '1';
                        PCWrite <= '1';
                        case func is
                            when "100000" => AluOp <= "00";
                            when "100010" => AluOp <= "01";
                            when "100100" => AluOp <= "10";
                            when "100101" => AluOp <= "11";
                            when others => AluOp <= "00";
                        end case;
                    when "100011" =>
                        MemRead <= '1';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "01";
                        MemtoReg <= '0';
                        IRWrite <= '1';
                        PCWrite <= '1';
                        AluOp <= "00";
                    when "101011" =>
                        MemRead <= '1';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "01";
                        MemtoReg <= '0';
                        IRWrite <= '1';
                        PCWrite <= '1';
                        AluOp <= "00";
                    when others =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '1';
                        AluOp <= "00";
                        
                end case;

            when Decode =>
                case opcode is
                    when "000000" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        case func is
                            when "100000" => AluOp <= "00";
                            when "100010" => AluOp <= "01";
                            when "100100" => AluOp <= "10";
                            when "100101" => AluOp <= "11";
                            when others => AluOp <= "00";
                        end case;
                    when "100011" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when "101011" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when others =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                        
                end case;

            when Execute =>
                case opcode is
                    when "000000" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '1';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        case func is
                            when "100000" => AluOp <= "00";
                            when "100010" => AluOp <= "01";
                            when "100100" => AluOp <= "10";
                            when "100101" => AluOp <= "11";
                            when others => AluOp <= "00";
                        end case;
                    when "100011" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '1';
                        AluSrcB <= "10";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when "101011" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '1';
                        AluSrcB <= "10";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when others =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                        
                end case;
            when Memory =>
                case opcode is
                    when "000000" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '1';
                        RegWrite <= '1';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        case func is
                            when "100000" => AluOp <= "00";
                            when "100010" => AluOp <= "01";
                            when "100100" => AluOp <= "10";
                            when "100101" => AluOp <= "11";
                            when others => AluOp <= "00";
                        end case;
                    when "100011" =>
                        MemRead <= '1';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when "101011" =>
                        MemRead <= '0';
                        MemWrite <= '1';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when others =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                        
                end case;

            when WriteBack =>
                case opcode is
                    when "000000" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        case func is
                            when "100000" => AluOp <= "00";
                            when "100010" => AluOp <= "01";
                            when "100100" => AluOp <= "10";
                            when "100101" => AluOp <= "11";
                            when others => AluOp <= "00";
                        end case;
                    when "100011" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '1';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '1';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when "101011" =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                    when others =>
                        MemRead <= '0';
                        MemWrite <= '0';
                        RegDst <= '0';
                        RegWrite <= '0';
                        AluSrcA <= '0';
                        AluSrcB <= "00";
                        MemtoReg <= '0';
                        IRWrite <= '0';
                        PCWrite <= '0';
                        AluOp <= "00";
                        
                end case;
                
            when others =>
                MemRead <= '0';
                MemWrite <= '0';
                RegDst <= '0';
                RegWrite <= '0';
                AluSrcA <= '0';
                AluSrcB <= "00";
                MemtoReg <= '0';
                IRWrite <= '0';
                PCWrite <= '0';
                AluOp <= "00";

        end case;
    end process;


end Behavioral;
