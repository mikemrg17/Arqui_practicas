library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library lattice;
use lattice.all;

entity memrom00 is
	port(
		incontro:  in std_logic_vector(5 downto 0);
		outro: out std_logic_vector(6 downto 0)
	);
end memrom00;

architecture memrom0 of memrom00 is
type arrayrom is array(0 to 63) of std_logic_vector(6 downto 0);

constant wordrom: arrayrom:=(
	"0111111", --0
	"0000110", --1
	"1011011", --2
	"1001111", --3
	"1100110", --4
	"1101101", --5
	"1111101", --6
	"0000111", --7
	"1111111", --8
	"1100111", --9
	"1110111", --A
	"1111100", --b
	"0111001", --C
	"1011110", --d
	"1111001", --E
	"1110001", --F
	others => "1111111");

begin

	outro <= wordrom(conv_integer(incontro));

end memrom0;