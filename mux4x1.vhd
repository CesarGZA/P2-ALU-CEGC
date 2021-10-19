LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--unidad=>s(2),b(3),salmux4x1(3)
--del mux4 port map(s,b, salmux4x1)
ENTITY mux4x1 IS
	PORT (
		s : IN STD_LOGIC_VECTOR(1 DOWNTO 0); --s(1) y s(0)
		b : IN STD_LOGIC_VECTOR(2 DOWNTO 0); --000 001 010 011  100 101 110 111
		salmux4x1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END ENTITY mux4x1;
ARCHITECTURE arqmux4x1 OF mux4x1 IS
BEGIN
	WITH s SELECT
		salmux4x1 <=
		(OTHERS => '1') WHEN "00",
		NOT b WHEN "01",
		b WHEN "10",
		(OTHERS => '0') WHEN OTHERS;
END ARCHITECTURE arqmux4x1;