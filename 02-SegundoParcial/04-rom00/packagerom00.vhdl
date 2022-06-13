library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagerom00 is

	component osc00
		port(
			cdiv:in std_logic_vector(4 downto 0);
			oscOut0: inout std_logic
		);
	end component;
	
	component contRead00
		port(
			clkrd: in std_logic;
			enrd: in std_logic;
			outcontrd: inout std_logic_vector(5 downto 0)
		);
	end component;
	
	component memrom00
		port(
			incontro:  in std_logic_vector(5 downto 0);
			outro: out std_logic_vector(6 downto 0)
		);
	end component;

end packagerom00;