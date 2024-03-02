library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity proiect_ent is
	port ( clk: in std_logic;
		reset: in std_logic;
		A : in STD_LOGIC_VECTOR(1 downto 0);
		B : in STD_LOGIC_VECTOR(1 downto 0);
		y: out std_logic_vector (3 downto 0));
end proiect_ent;

architecture proiect_arh of proiect_ent is
	type stare_tip is (S0,S1,S2,S3,S4,S5,S6,S7);
	signal stare: stare_tip;
	signal locuri: std_logic_vector (3 downto 0):="1110";

begin
--trece de la o stare la alta
process (clk,reset,stare,A,B)
	begin
	if reset='1' then stare<=S0;
		y<=x"0";
	elsif clk='1' and clk'event then
		case stare is
			when S0=> if ((A="11" and B/="11")or(B="11" and A/="11")) then stare<=S1;
					elsif (A="11" and B="11") then stare<=S2;
					end if;
					y<=locuri;
			when S1=> if (A="10" or B="10") then stare<=S3;
					elsif (A="01" or B="01") then stare<=S4;
					end if;
					y<=locuri;
			when S2=> if ((A="10" and B="01")or(B="10" and A="01")) then stare<=S5;
					elsif (A="10" and B="10") then stare<=S6;
					elsif (A="01" and B="01") then stare<=S7; 
					end if;
					y<=locuri;
			when S3=> stare<=S0;
					y<=locuri-1;
			when S4=> stare<=S0;
					y<=locuri+1;
			when S5=> stare<=S0;
					y<=locuri;
			when S6=> stare<=S0;
					y<=locuri-2;
			when S7=> stare<=S0;
					y<=locuri+2;
		end case;
	end if;
end process;

--process semnale interne
process(clk)
	begin
		if rising_edge(clk) then

			if stare=S0 then locuri<="1110" ;
			end if;

			if stare=S1 then locuri<="1110" ;
			end if;

			if stare=S2 then locuri<="1110" ;
			end if;

			if stare=S3 then locuri<=locuri-1;
			end if;

			if stare=S4 then locuri<=locuri+1;
			end if;

			if stare=S5 then locuri<=locuri-1;
			end if;

			if stare=S6 then locuri<=locuri-2;
			end if;

			if stare=S7 then locuri<=locuri+2;
			end if;

		end if;
end process;

y<=locuri;

end proiect_arh;