--
-- Synopsys
-- Vhdl wrapper for top level design, written on Thu Mar 10 02:10:00 2022
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity wrapper_for_adder4bitLib00 is
   port (
      Ai : in std_logic_vector(7 downto 0);
      Bi : in std_logic_vector(7 downto 0);
      SL : in std_logic;
      So : out std_logic_vector(7 downto 0)
   );
end wrapper_for_adder4bitLib00;

architecture adder4bitlib0 of wrapper_for_adder4bitLib00 is

component adder4bitLib00
 port (
   Ai : in std_logic_vector (7 downto 0);
   Bi : in std_logic_vector (7 downto 0);
   SL : in std_logic;
   So : out std_logic_vector (7 downto 0)
 );
end component;

signal tmp_Ai : std_logic_vector (7 downto 0);
signal tmp_Bi : std_logic_vector (7 downto 0);
signal tmp_SL : std_logic;
signal tmp_So : std_logic_vector (7 downto 0);

begin

tmp_Ai <= Ai;

tmp_Bi <= Bi;

tmp_SL <= SL;

So <= tmp_So;



u1:   adder4bitLib00 port map (
		Ai => tmp_Ai,
		Bi => tmp_Bi,
		SL => tmp_SL,
		So => tmp_So
       );
end adder4bitlib0;
