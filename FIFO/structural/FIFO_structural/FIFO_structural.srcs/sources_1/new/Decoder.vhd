library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port (
        pointer : in STD_LOGIC_VECTOR (3 downto 0);
        decoded : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Decoder;

architecture Behavioral of Decoder is
begin
    process(pointer)
    begin
        case pointer is
            when "0000" =>
                decoded <= "00000001";
            when "0001" =>
                decoded <= "00000010";
            when "0010" =>
                decoded <= "00000100";
            when "0011" =>
                decoded <= "00001000";
            when "0100" =>
                decoded <= "00010000";
            when "0101" =>
                decoded <= "00100000";
            when "0110" =>
                decoded <= "01000000";
            when others =>
                decoded <= "10000000";
        end case;
    end process;
end Behavioral;
