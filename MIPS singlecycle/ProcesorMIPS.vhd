----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.05.2023 10:08:06
-- Design Name: 
-- Module Name: Processor - Behavioral
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

entity ProcesorMips is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC_VECTOR (4 downto 0);
           sw : in  STD_LOGIC_VECTOR (7 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           an : out  STD_LOGIC_VECTOR (3 downto 0);
           cat : out  STD_LOGIC_VECTOR (6 downto 0));
           --dp : out  STD_LOGIC);
end ProcesorMips;

architecture Behavioral of ProcesorMips is
signal RegDst: std_logic;
signal ExtOp: std_logic;
signal ALUSrc: std_logic;
signal en: std_logic;
signal Branch: std_logic;
signal Jump: std_logic;
signal ALUOp: std_logic_vector(2 downto 0);
signal MemWrite: std_logic;
signal MemtoReg: std_logic;
signal RegWrite: std_logic;
--signal EnableFetch: std_logic;
--signal outOfPc: std_logic_vector(15 downto 0); 
--signal RegWrite: std_logic; --asta iese din main controller
signal RightAdder: std_logic_vector(15 downto 0);
signal LeftAdder: std_logic_vector(15 downto 0);
--signal pcUp: std_logic_vector(15 downto 0);
signal func: std_logic_vector(2 downto 0);
signal Ext_IMM: std_logic_vector(15 downto 0);
signal WriteAddress: std_logic_vector(2 downto 0);
signal sa: std_logic;
signal BranchAddress: std_logic_vector(15 downto 0);
signal WriteData: std_logic_vector(15 downto 0); --iese din muxu de jos dreapta
signal pcSrc: std_logic; --iese din Alu si intra in instr fetch
signal InstructionActual: std_logic_vector(15 downto 0);
signal DataMemoryAlu: std_logic_vector(15 downto 0);
signal ReadData1: std_logic_vector(15 downto 0);
signal ReadData2: std_logic_vector(15 downto 0);
signal DataMOut: std_logic_vector(15 downto 0); 
--signal ALURes: std_logic_vector(15 downto 0);
signal ZeroAlu: std_logic;
signal ActualJumpAddres: std_logic_vector(15 downto 0);
signal RegEnable: std_logic;
signal SSDOutput: std_logic_vector(15 downto 0);
component mono_pulse_generator is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           en : out STD_LOGIC);
end component;
component SSD is
    Port (
    clk: in std_logic;
    sw: in std_logic_vector(15 downto 0);
    an: out std_logic_vector(3 downto 0);
    cat: out std_logic_vector (6 downto 0)
    );
end component;
component Instruction_Decode_Data_Path_for_MIPS_32 is
  Port (
      instr : in STD_LOGIC_VECTOR (15 downto 0);
           RegWrite : in STD_LOGIC;    
           wd : in STD_LOGIC_VECTOR(15 downto 0);   
           rd1 : out STD_LOGIC_VECTOR (15 downto 0);
           rd2 : out STD_LOGIC_VECTOR (15 downto 0);
           ExtOp : in STD_LOGIC;
           func : out STD_LOGIC_VECTOR (2 downto 0);
           Ext_Imm : out STD_LOGIC_VECTOR (15 downto 0);
           sa : out STD_LOGIC;
           clk : in STD_LOGIC;
           RegDst : in STD_LOGIC) ;
end component;
component Instruction_Fetch_Data_Path is
    Port ( jump_adr : in STD_LOGIC_VECTOR (15 downto 0);
           branch_adr : in STD_LOGIC_VECTOR (15 downto 0);
           instruction : out STD_LOGIC_VECTOR (15 downto 0);
           pc_plus_1 : out STD_LOGIC_VECTOR (15 downto 0);
           en : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           jump : in STD_LOGIC;
           pcsrc : in STD_LOGIC);
end component;
component InstructionExecute is
    Port ( 
           pc_plus_4 : in STD_LOGIC_VECTOR (15 downto 0); --ala de sus
           rd1 : in STD_LOGIC_VECTOR (15 downto 0);
           rd2 : in STD_LOGIC_VECTOR (15 downto 0);
           Ext_Imm : in STD_LOGIC_VECTOR (15 downto 0);
           sa : in STD_LOGIC;
           func : in STD_LOGIC_VECTOR (2 downto 0);
           ALUOp : in STD_LOGIC_VECTOR(2 DOWNTO 0);
           ALUSrc : in STD_LOGIC;
           BranchAddress : out STD_LOGIC_VECTOR (15 downto 0);
           ALURes : out STD_LOGIC_VECTOR (15 downto 0);
           Zero : out STD_LOGIC
    );
end component;
component Memory_Unit is
    port ( clk : in std_logic;
           we : in std_logic;
           --en : in std_logic;
           addr : in std_logic_vector(15 downto 0);
           di : in std_logic_vector(15 downto 0);
           do : out std_logic_vector(15 downto 0));
end component;
component Main_Control_Unit is
  Port ( 
       instruction: in std_logic_vector(2 downto 0);
       RegDst: out std_logic;
       ExtOp: out std_logic;
       ALUSrc: out std_logic;
       Branch: out std_logic;
       Jump: out std_logic;
       ALUOp: out std_logic_vector(2 downto 0);
       MemWrite: out std_logic;
       MemtoReg: out std_logic;
       RegWrite: out std_logic
  );
end component;
begin
    PcSrc <= ZeroAlu and Branch;
    Debouncer1: mono_pulse_generator port map (clk, btn(1), RegEnable);
    Debouncer2: mono_pulse_generator port map (clk, btn(0), en);
    InstructionFetch: Instruction_Fetch_Data_Path port map (LeftAdder, RightAdder, InstructionActual, LeftAdder, RegEnable, clk, en, Jump, PcSrc);
    InstructionDecoder: Instruction_Decode_Data_Path_for_MIPS_32 port map (InstructionActual, RegWrite, WriteData, ReadData1, ReadData2, ExtOP, func, Ext_IMM, sa, clk, RegDst);
    InstructionExecuteL: InstructionExecute port map (LeftAdder, ReadData1, ReadData2, Ext_IMM, sa, func, AluOp, AluSrc, RightAdder, DataMemoryAlu, ZeroAlu);
    DataMemory: Memory_Unit port map (clk, MemWrite, DataMemoryAlu, ReadData2, DataMOut);
    ControlUnit: Main_Control_Unit port map (InstructionActual(15 downto 13), RegDst, ExtOp, AluSrc, Branch, Jump, AluOp, MemWrite, MemToReg, RegWrite);
    Ssd1: ssd port map ( clk, SSDOutput, an, cat);
    
    process(MemtoReg,WriteData,DataMemoryAlu,DataMOut)
    begin
     case (MemtoReg) is
      when '0'=>WriteData<=DataMemoryAlu;
      when others=>WriteData<=DataMOut;
     end case;
    end process;

    process(RegDst, ExtOp, ALUSrc, Branch, Jump, MemWrite, MemtoReg, RegWrite, sw, ALUOp)
    begin
	   if sw(0)='0' then		
		led(7)<=RegDst;
		led(6)<=ExtOp;
		led(5)<=ALUSrc;
		led(4)<=Branch;
		led(3)<=Jump;
		led(2)<=MemWrite;
		led(1)<=MemtoReg;
		led(0)<=RegWrite;     	
	   else
		led(2 downto 0)<=ALUOp(2 downto 0);
		led(7 downto 3)<="00000";
	   end if;
    end process;
    
    process(InstructionActual, LeftAdder, ReadData1, ReadData2, Ext_Imm, DataMemoryAlu, DataMOut, WriteData, sw)
    begin
	case(sw(3 downto 1)) is
		when "000"=>
				SSDOutput <= InstructionActual;			-----AFISARE INSTROUT-----
		when "001"=>
				SSDOutput <= LeftAdder;				-----AFISARE PCOUT-----
		when "010"=>
				SSDOutput <= ReadData1;				-----AFISARE ReadData1-----
		when "011"=>
				SSDOutput <= ReadData2;			-----AFISARE ReadData2-----
		when "100"=>
				SSDOutput <= Ext_Imm;			-----AFISARE EXT_IMM-----
		when "101" =>
				SSDOutput <= DataMemoryAlu;			-----AFISARE ALUres-----		
		when "110"=>
				SSDOutput <= DataMOut;			-----AFISARE MemData-----
		when "111"=>
				SSDOutput <= WriteData;	-----AFISARE WriteData - RegisterFile-----
		when others=>
				SSDOutput <= x"AAAA";
	end case;
end process;
end Behavioral;