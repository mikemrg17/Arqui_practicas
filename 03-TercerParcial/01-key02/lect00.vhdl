library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;

entity lect00 is
	port(
		clkrd: in std_logic;
		enrd: in std_logic;
		inpushrd: in std_logic;
		incoderd: in std_logic_vector(3 downto 0);
		out32rd: inout std_logic_vector(31 downto 0)
		
	);
end lect00;

architecture lect0 of lect00 is
signal scontrolrd: std_logic_vector(1 downto 0);
begin

	scontrolrd <= (enrd)&(inpushrd);
	
	plect: process(clkrd)
	begin
		if(clkrd'event and clkrd = '1') then
			case scontrolrd is
				when "00" =>
					out32rd <= (others => '0');
				
				when "11" =>
					out32rd(3 downto 0) <= incoderd;
					out32rd(31 downto 4) <= out32rd(27 downto 0);
				
				when others => null;
			end case;
		end if;
	end process plect;

end lect0;