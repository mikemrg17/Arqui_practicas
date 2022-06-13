library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packagefsm00.all;

entity fsmmoore00 is
	port(
		clk0: inout std_logic;
		cdiv0: in std_logic_vector(4 downto 0);
		en0: in std_logic;
		address0: inout std_logic_vector(5 downto 0);
		inxfsm0: inout std_logic_vector(5 downto 0);
		outfsm0: out std_logic_vector(2 downto 0)
	);
end fsmmoore00;

architecture fsmmoore0 of fsmmoore00 is
begin

	FS00: osc00 port map(
		cdiv => cdiv0,
		oscOut0 => clk0
	);
	
	FS01: contRead00 port map(
		clkcr => clk0,
		encr => en0,
		outcontcr => address0
	);
	
	FS02: memrom00 port map(
		incontro => address0,
		outro => inxfsm0
	);
	
	FS03: fsm00 port map(
		clkfsm => clk0,
		enfsm => en0,
		inxfsm => inxfsm0,
		outfsm => outfsm0
	);
	
	

end fsmmoore0;