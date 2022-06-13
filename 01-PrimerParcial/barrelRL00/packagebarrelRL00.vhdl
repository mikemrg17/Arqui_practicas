library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packagebarrelRL00 is

	component osc00
		port(
			cdiv: in std_logic_vector(4 downto 0);
			oscOut0: inout std_logic
		);
	end component;
	
	component barrelRL
		port(
			clks: in std_logic;
			ens: in std_logic;
			incs: in std_logic_vector(3 downto 0);
			ins: in std_logic_vector(7 downto 0);
			outs: inout std_logic_vector(7 downto 0)
		);
	end component;
	

end packagebarrelRL00;