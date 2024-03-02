library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.ALL;
use IEEE.std_logic_unsigned.ALL;


entity ReadPointer is
    Port ( 
        clk : in STD_LOGIC;
        enable : in STD_LOGIC;
        reset : in STD_LOGIC;
        q : out STD_LOGIC_VECTOR (3 downto 0)
    );
end ReadPointer;

architecture Behavioral of ReadPointer is
    signal counter : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= "0000";  
        elsif rising_edge(clk) then
            if enable = '1' then
                if counter = "1000" then
                    counter <= "0000";  
                else
                    counter <= counter + 1; 
                end if;
            end if;
        end if;
    end process;

    q <= counter;
end Behavioral;
