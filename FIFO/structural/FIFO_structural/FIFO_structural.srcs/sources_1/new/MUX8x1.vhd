library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX8x1 is
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
end MUX8x1;

architecture Behavioral of MUX8x1 is
begin
    process(sel, in1, in2, in3, in4, in5, in6, in7, in8)
    begin 
        case sel is 
            when "000" =>
                dataOut <= in1;
            when "001" =>
                dataOut <= in2;
            when "010" =>
                dataOut <= in3;
            when "011" =>
                dataOut <= in4;
            when "100" =>
                dataOut <= in5;
            when "101" =>
                dataOut <= in6;
            when "110" =>
                dataOut <= in7;
            when others =>
                dataOut <= in8;
        end case;
    end process;
end Behavioral;
