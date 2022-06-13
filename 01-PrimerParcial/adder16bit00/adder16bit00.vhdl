library ieee;
use ieee.std_logic_1164.all;
library lattice;
use lattice.all;
use packageadder8bit00.all;

entity adder16bit00 is
	port(
		Ai: in std_logic_vector(15 downto 0);
		Bi: in std_logic_vector(15 downto 0);
		SL: in std_logic;
		So: out std_logic_vector(15 downto 0);
		LED: out std_logic
	);
end adder16bit00;

architecture adder16bit0 of adder16bit00 is

signal SA: std_logic_vector(15 downto 0);
signal SB: std_logic_vector(15 downto 0);
signal SC: std_logic_vector(15 downto 0);
signal SX: std_logic;

begin

	----XOR----
	A00: xor00 port map(
		Ax => SL,
		Bx => Bi(0),
		Yx => SB(0)
	);
	
	A01: xor00 port map(
		Ax => SL,
		Bx => Bi(1),
		Yx => SB(1)
	);
	
	A02: xor00 port map(
		Ax => SL,
		Bx => Bi(2),
		Yx => SB(2)
	);
	
	A03: xor00 port map(
		Ax => SL,
		Bx => Bi(3),
		Yx => SB(3)
	);
	
	A04: xor00 port map(
		Ax => SL,
		Bx => Bi(4),
		Yx => SB(4)
	);
	
	A05: xor00 port map(
		Ax => SL,
		Bx => Bi(5),
		Yx => SB(5)
	);
	
	A06: xor00 port map(
		Ax => SL,
		Bx => Bi(6),
		Yx => SB(6)
	);
	
	A07: xor00 port map(
		Ax => SL,
		Bx => Bi(7),
		Yx => SB(7)
	);
	
	A08: xor00 port map(
		Ax => SL,
		Bx => Bi(8),
		Yx => SB(8)
	);
	
	A09: xor00 port map(
		Ax => SL,
		Bx => Bi(9),
		Yx => SB(9)
	);
	
	A10: xor00 port map(
		Ax => SL,
		Bx => Bi(10),
		Yx => SB(10)
	);
	
	A11: xor00 port map(
		Ax => SL,
		Bx => Bi(11),
		Yx => SB(11)
	);
	
	A12: xor00 port map(
		Ax => SL,
		Bx => Bi(12),
		Yx => SB(12)
	);
	
	A13: xor00 port map(
		Ax => SL,
		Bx => Bi(13),
		Yx => SB(13)
	);
	
	A14: xor00 port map(
		Ax => SL,
		Bx => Bi(14),
		Yx => SB(14)
	);
	
	A15: xor00 port map(
		Ax => SL,
		Bx => Bi(15),
		Yx => SB(15)
	);
	
	---FA---
	A16: FA00 port map(
		A00 => Ai(0),
		B00 => SB(0),
		C00 => SL,
		S00 => SA(0),
		C01 => SC(0)
	);
	
	A17: FA00 port map(
		A00 => Ai(1),
		B00 => SB(1),
		C00 => SC(0),
		S00 => SA(1),
		C01 => SC(1)
	);
	
	A18: FA00 port map(
		A00 => Ai(2),
		B00 => SB(2),
		C00 => SC(1),
		S00 => SA(2),
		C01 => SC(2)
	);
	
	A19: FA00 port map(
		A00 => Ai(3),
		B00 => SB(3),
		C00 => SC(2),
		S00 => SA(3),
		C01 => SC(3)
	);
	
	A20: FA00 port map(
		A00 => Ai(4),
		B00 => SB(4),
		C00 => SC(3),
		S00 => SA(4),
		C01 => SC(4)
	);
	
	A21: FA00 port map(
		A00 => Ai(5),
		B00 => SB(5),
		C00 => SC(4),
		S00 => SA(5),
		C01 => SC(5)
	);
	
	A22: FA00 port map(
		A00 => Ai(6),
		B00 => SB(6),
		C00 => SC(5),
		S00 => SA(6),
		C01 => SC(6)
	);
	
	A23: FA00 port map(
		A00 => Ai(7),
		B00 => SB(7),
		C00 => SC(6),
		S00 => SA(7),
		C01 => SC(7)
	);
	
	A24: FA00 port map(
		A00 => Ai(8),
		B00 => SB(8),
		C00 => SC(7),
		S00 => SA(8),
		C01 => SC(8)
	);
	
	A25: FA00 port map(
		A00 => Ai(9),
		B00 => SB(9),
		C00 => SC(8),
		S00 => SA(9),
		C01 => SC(9)
	);
	
	A26: FA00 port map(
		A00 => Ai(10),
		B00 => SB(10),
		C00 => SC(9),
		S00 => SA(10),
		C01 => SC(10)
	);
	
	A27: FA00 port map(
		A00 => Ai(11),
		B00 => SB(11),
		C00 => SC(10),
		S00 => SA(11),
		C01 => SC(11)
	);
	
	A28: FA00 port map(
		A00 => Ai(12),
		B00 => SB(12),
		C00 => SC(11),
		S00 => SA(12),
		C01 => SC(12)
	);
	
	A29: FA00 port map(
		A00 => Ai(13),
		B00 => SB(13),
		C00 => SC(12),
		S00 => SA(13),
		C01 => SC(13)
	);
	
	A30: FA00 port map(
		A00 => Ai(14),
		B00 => SB(14),
		C00 => SC(13),
		S00 => SA(14),
		C01 => SC(14)
	);
	
	A31: FA00 port map(
		A00 => Ai(15),
		B00 => SB(15),
		C00 => SC(14),
		S00 => SA(15),
		C01 => SC(15)
	);
	
	---and---
	A32: and00 port map(
		Aa => SX,
		Ba => SA(0),
		Ya => So(0)
	);
	
	A33: and00 port map(
		Aa => SX,
		Ba => SA(1),
		Ya => So(1)
	);
	
	A34: and00 port map(
		Aa => SX,
		Ba => SA(2),
		Ya => So(2)
	);
	
	A35: and00 port map(
		Aa => SX,
		Ba => SA(3),
		Ya => So(3)
	);
	
	A36: and00 port map(
		Aa => SX,
		Ba => SA(4),
		Ya => So(4)
	);
	
	A37: and00 port map(
		Aa => SX,
		Ba => SA(5),
		Ya => So(5)
	);
	
	A38: and00 port map(
		Aa => SX,
		Ba => SA(6),
		Ya => So(6)
	);
	
	A39: and00 port map(
		Aa => SX,
		Ba => SA(7),
		Ya => So(7)
	);
	
	A40: and00 port map(
		Aa => SX,
		Ba => SA(8),
		Ya => So(8)
	);
	
	A41: and00 port map(
		Aa => SX,
		Ba => SA(9),
		Ya => So(9)
	);
	
	A42: and00 port map(
		Aa => SX,
		Ba => SA(10),
		Ya => So(10)
	);
	
	A43: and00 port map(
		Aa => SX,
		Ba => SA(11),
		Ya => So(11)
	);
	
	A44: and00 port map(
		Aa => SX,
		Ba => SA(12),
		Ya => So(12)
	);
	
	A45: and00 port map(
		Aa => SX,
		Ba => SA(13),
		Ya => So(13)
	);
	
	A46: and00 port map(
		Aa => SX,
		Ba => SA(14),
		Ya => So(14)
	);
	
	A47: and00 port map(
		Aa => SX,
		Ba => SA(15),
		Ya => So(15)
	);
	
	---CARRY---
	A48: xnor00 port map(
		Axn => SC(14),
		Bxn => SC(15),
		Yxn => SX
	);
	
	A49: xor00 port map(
		Ax => SC(14),
		Bx => SC(15),
		Yx => LED
	);

end adder16bit0;