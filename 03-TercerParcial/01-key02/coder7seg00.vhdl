library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity coder7seg00 is
	port(
		incontcd7: in std_logic_vector(3 downto 0);
		in32cd7: in std_logic_vector(31 downto 0);
		out7segcd: out std_logic_vector(6 downto 0)
	);
end coder7seg00;

architecture coder7seg0 of coder7seg00 is
signal snibb0, snibb1, snibb2: std_logic_vector(3 downto 0);
signal snibb3, snibb4, snibb5: std_logic_vector(3 downto 0);
signal snibb6, snibb7: std_logic_vector(3 downto 0);
signal scode7seg0, scode7seg1, scode7seg2: std_logic_vector(6 downto 0);
signal scode7seg3, scode7seg4, scode7seg5: std_logic_vector(6 downto 0);
signal scode7seg6, scode7seg7: std_logic_vector(6 downto 0);
begin

	snibb0 <= in32cd7(3 downto 0);
	snibb1 <= in32cd7(7 downto 4);
	snibb2 <= in32cd7(11 downto 8);
	snibb3 <= in32cd7(15 downto 12);
	snibb4 <= in32cd7(19 downto 16);
	snibb5 <= in32cd7(23 downto 20);
	snibb6 <= in32cd7(27 downto 24);
	snibb7 <= in32cd7(31 downto 28);
	
	with snibb0 select
		scode7seg0 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
	
	with snibb1 select
		scode7seg1 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
	
	with snibb2 select
		scode7seg2 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
					  
	with snibb3 select
		scode7seg3 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
	
	with snibb4 select
		scode7seg4 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
					  
	with snibb5 select
		scode7seg5 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
					  
	with snibb6 select
		scode7seg6 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
	
	
	with snibb7 select
		scode7seg7 <= "0111111" when "0000", --0
					  "0000110" when "0001", --1
					  "1011011" when "0010", --2
					  "1001111" when "0011", --3
					  "1100110" when "0100", --4
					  "1101101" when "0101", --5
					  "1111101" when "0110", --6
					  "0000111" when "0111", --7
					  "1111111" when "1000", --8
					  "1100111" when "1001", --9
					  "1110111" when "1010", --A
					  "1111100" when "1011", --b
					  "0111001" when "1100", --C
					  "1011110" when "1101", --d
					  "1111001" when "1110", --E
					  "1110001" when "1111", --F
					  "1111111" when others;
	
	with incontcd7 select
		out7segcd <= scode7seg0 when "1110",
					 scode7seg1 when "1101",
					 scode7seg2 when "1011",
					 scode7seg3 when "0111",
					 "0000000" when others;
end coder7seg0;