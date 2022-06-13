library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity div00 is
	port(
		clkdiv: in std_logic;
		cdiv: in std_logic_vector(4 downto 0);
		oscout: out std_logic
	);
end div00;

architecture div0 of div00 is
signal sdiv: std_logic_vector(21 downto 0);
begin

	pdiv: process(clkdiv)
	begin
	
	end process pdiv;

end div0;