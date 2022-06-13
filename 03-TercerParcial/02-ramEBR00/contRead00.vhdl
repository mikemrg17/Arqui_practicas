library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity contRead00 is
	port(
		clkcr: in std_logic;
		recr: in std_logic;
		encr: in std_logic;
		rwcr: in std_logic;
		outcontcr: inout std_logic_vector(5 downto 0)
	);
end contRead00;

architecture contRead0 of contRead00 is
signal scontrolcr: std_logic_vector(2 downto 0);
begin

	scontrolcr <= (recr)&(encr)&(rwcr);
	
	pcontcr: process(clkcr)
	begin
	
		case scontrolcr is
			when "100" =>
				outcontcr <= "000000";
			when "001" =>
				outcontcr <= outcontcr;
			when "010" => --Read mode
				if(clkcr'event and clkcr='1') then
					outcontcr <= outcontcr + '1';
				end if;
			when others => null;
		end case;
	
	end process pcontcr;

end contRead0;