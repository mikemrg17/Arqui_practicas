--
-- Synopsys
-- Vhdl wrapper for top level design, written on Mon May  9 12:43:20 2022
--
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.packagerom00.all;

entity wrapper_for_rom00 is
   port (
      clk0 : in std_logic;
      cdiv0 : in std_logic_vector(4 downto 0);
      en0 : in std_logic;
      outcontrd0 : in std_logic_vector(5 downto 0);
      outrom0 : out std_logic_vector(6 downto 0);
      outtransist0 : out std_logic_vector(3 downto 0)
   );
end wrapper_for_rom00;

architecture rom0 of wrapper_for_rom00 is

component rom00
 port (
   clk0 : inout std_logic;
   cdiv0 : in std_logic_vector (4 downto 0);
   en0 : in std_logic;
   outcontrd0 : inout std_logic_vector (5 downto 0);
   outrom0 : out std_logic_vector (6 downto 0);
   outtransist0 : out std_logic_vector (3 downto 0)
 );
end component;

signal tmp_clk0 : std_logic;
signal tmp_cdiv0 : std_logic_vector (4 downto 0);
signal tmp_en0 : std_logic;
signal tmp_outcontrd0 : std_logic_vector (5 downto 0);
signal tmp_outrom0 : std_logic_vector (6 downto 0);
signal tmp_outtransist0 : std_logic_vector (3 downto 0);

begin

tmp_clk0 <= clk0;

tmp_cdiv0 <= cdiv0;

tmp_en0 <= en0;

tmp_outcontrd0 <= outcontrd0;

outrom0 <= tmp_outrom0;

outtransist0 <= tmp_outtransist0;



u1:   rom00 port map (
		clk0 => tmp_clk0,
		cdiv0 => tmp_cdiv0,
		en0 => tmp_en0,
		outcontrd0 => tmp_outcontrd0,
		outrom0 => tmp_outrom0,
		outtransist0 => tmp_outtransist0
       );
end rom0;
