LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY UL IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		F : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END ENTITY UL;

ARCHITECTURE arqUL OF UL IS
	SIGNAL sand, sor, sxor, snot : STD_LOGIC_VECTOR(2 DOWNTO 0);

BEGIN
	sand <= a AND b;
	sor <= a OR b;
	sxor <= a XOR b;
	snot <= NOT a;

	WITH s SELECT
		F <= sand WHEN "00",
		sor WHEN "01",
		sxor WHEN "10",
		snot WHEN "11",
		(OTHERS => '0') WHEN OTHERS;
END ARCHITECTURE arqUL;