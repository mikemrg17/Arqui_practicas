library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagekey00 is

	component osc00 is
		port(
			cdiv:in std_logic_vector(4 downto 0);
			oscOut0: inout std_logic
		);
	end component;
	
	component contring00 is
		port(
			clkr: in std_logic;
			enr: in std_logic;
			outr: inout std_logic_vector(3 downto 0)
		);
	end component;
	
	component coder00 is
		port(
			clkc: in std_logic;
			inkeyc: in std_logic_vector(3 downto 0);
			incontc: in std_logic_vector(3 downto 0); 
			outcoder: out std_logic_vector(6 downto 0)
		);
	end component;

end packagekey00;