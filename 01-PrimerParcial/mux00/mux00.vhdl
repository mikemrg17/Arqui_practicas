library ieee;
use ieee.std_logic_1164.all;
library ieee;
use lattice.all;

entity mux00 is
	port(
		Am: in std_logic_vector(7 downto 0);
		Bm: in std_logic_vector(7 downto 0);
		SELECTOR: in std_logic_vector(2 downto 0);
		Ym: out std_logic_vector(7 downto 0)
	);
end mux00;

architecture mux0 of mux00 is
	begin
		with SELECTOR select
			Ym <= Am and Bm when "000",
					Am or Bm when "001",
					Am xor Bm when "011",
					Am nand Bm when "111",
					Am nor Bm when "110",
					Am xnor Bm when "100",
					Am and Bm when "010",
					not(Bm) when "101";
end mux0;
