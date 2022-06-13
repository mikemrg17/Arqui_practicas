library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

package packageramEBR00 is

	component osc00
		port(
			cdiv:in std_logic_vector(4 downto 0);
			oscOut0: inout std_logic
		);
	end component;
	
	component contRead00
		port(
			clkcr: in std_logic;
			recr: in std_logic;
			encr: in std_logic;
			rwcr: in std_logic;
			outcontcr: inout std_logic_vector(5 downto 0)
		);
	end component;
	
	component ram_EBR_00
		port(
			Clock: in std_logic;
			ClockEn: in std_logic;
			Reset: in std_logic;
			WE: in std_logic;
			Address: in std_logic_vector(5 downto 0);
			Data: in std_logic_vector(7 downto 0);
			Q: out std_logic_vector(7 downto 0)
		);
	end component;

end packageramEBR00;