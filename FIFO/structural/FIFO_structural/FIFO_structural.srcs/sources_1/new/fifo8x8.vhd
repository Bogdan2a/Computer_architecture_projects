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

component Decoder is
    Port (
        pointer : in STD_LOGIC_VECTOR (3 downto 0);
        decoded : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component;

component Dflipflop is
Port ( 
        d : in std_logic_vector (7 downto 0);
        q : out std_logic_vector (7 downto 0);
        clk : in std_logic;
        enable : in std_logic;
        reset : in std_logic
    );
end component;

component MUX8x1 is
    Port ( in1 : in STD_LOGIC_VECTOR (7 downto 0);
           in2 : in STD_LOGIC_VECTOR (7 downto 0);
           in3 : in STD_LOGIC_VECTOR (7 downto 0);
           in4 : in STD_LOGIC_VECTOR (7 downto 0);
           in5 : in STD_LOGIC_VECTOR (7 downto 0);
           in6 : in STD_LOGIC_VECTOR (7 downto 0);
           in7 : in STD_LOGIC_VECTOR (7 downto 0);
           in8 : in STD_LOGIC_VECTOR (7 downto 0);
           sel : in STD_LOGIC_VECTOR (2 downto 0);
           dataOut : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component ReadPointer is
    Port ( 
        clk : in STD_LOGIC;
        enable : in STD_LOGIC;
        reset : in STD_LOGIC;
        q : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

signal wrptr,rdptr: std_logic_vector(3 downto 0); 
signal decoded,dataOut,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8: std_logic_vector(7 downto 0); 
signal D1,D2,D3,D4,D5,D6,D7,D8:std_logic;

 
begin

RDpointer : ReadPointer port map (clk=>clk,enable=>rdinc,reset=>rst,q=>rdptr);
WRpointer : ReadPointer port map (clk=>clk,enable=>wrinc,reset=>rst,q=>wrptr);
DEC: Decoder port map (pointer=>wrptr,decoded=>decoded);
MUX: MUX8x1 port map (in1=>Q1,in2=>Q2,in3=>Q3,in4=>Q4,in5=>Q5,in6=>Q6,in7=>Q7,in8=>Q8,sel=>rdptr(2 downto 0),dataOut=>dataOut);
D1<=decoded(0) and wr;
D2<=decoded(1) and wr;
D3<=decoded(2) and wr;
D4<=decoded(3) and wr;
D5<=decoded(4) and wr;
D6<=decoded(5) and wr;
D7<=decoded(6) and wr;
D8<=decoded(7) and wr;
ff1: Dflipflop port map (d=>data_in,q=>Q1,clk=>clk,enable=>D1,reset=>rst);
ff2: Dflipflop port map (d=>data_in,q=>Q2,clk=>clk,enable=>D2,reset=>rst);
ff3: Dflipflop port map (d=>data_in,q=>Q3,clk=>clk,enable=>D3,reset=>rst);
ff4: Dflipflop port map (d=>data_in,q=>Q4,clk=>clk,enable=>D4,reset=>rst);
ff5: Dflipflop port map (d=>data_in,q=>Q5,clk=>clk,enable=>D5,reset=>rst);
ff6: Dflipflop port map (d=>data_in,q=>Q6,clk=>clk,enable=>D6,reset=>rst);
ff7: Dflipflop port map (d=>data_in,q=>Q7,clk=>clk,enable=>D7,reset=>rst);
ff8: Dflipflop port map (d=>data_in,q=>Q8,clk=>clk,enable=>D8,reset=>rst);


process (rd,dataOut)
begin
if rd = '1' then
    data_out <= dataOut;
else
    data_out <= "ZZZZZZZZ";
end if;
end process;



end Behavioral;
