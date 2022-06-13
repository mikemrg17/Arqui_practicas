library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;
library machxo2;
use machxo2.all;

entity coder00 is
	port(
		clkc:in std_logic;
		incontc:in std_logic_vector(3 downto 0);
		inkeyc:in std_logic_vector(3 downto 0);
		outcoder:out std_logic_vector(6 downto 0)
	);
end coder00;

architecture coder0 of coder00 is
begin
	pcoder: process(clkc)
	variable aux: bit:='0';
	begin
		if(clkc'event and clkc='1')then
			case incontc is
				when "1000" =>
					case inkeyc is
						when "0000" =>
							aux:='0';
							--outcoder<="0000000";
						when "0001" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1110111";--1
							end if;
						when "0010" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1001111";--2
							end if;
						when "0100" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1011011";--3
							end if;
						when "1000" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="0000110";--A
							end if;
						when others => null;
					end case;
				when "0100" =>
					case inkeyc is
						when "0000" =>
							aux:='0';
							--outcoder<="0000000";
						when "0001" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1111100";--4
							end if;
						when "0010" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1111101";--5
							end if;
						when "0100" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1101101";--6
							end if;
						when "1000" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1100110";--b
							end if;
						when others => null;
					end case;
				when "0010" =>
					case inkeyc is
						when "0000" =>
							aux:='0';
							--outcoder<="0000000";
						when "0001" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="0111001";--7
							end if;
						when "0010" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1100111";--8
							end if;
						when "0100" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1111111";--9
							end if;
						when "1000" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="0000111";--C
							end if;
						when others => null;
					end case;
				when "0001" =>
					case inkeyc is
						when "0000" =>
							aux:='0';
							--outcoder<="0000000";
						when "0001" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1011100";--0
							end if;
						when "0010" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1000000";--*
							end if;
						when "0100" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="0000001";--+ 
							end if;
						when "1000" =>
							if(aux = '0')then
								aux:='1';
								outcoder<="1100011";-- -
							end if;
						when others => null;
					end case;
				when others => null;
			end case;
		end if;
	end process pcoder;
end coder0;