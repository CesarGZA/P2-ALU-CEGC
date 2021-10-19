LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux2x1 IS
	PORT (
		ua, ul : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		s2 : IN STD_LOGIC;
		salmux2x1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END ENTITY mux2x1;

ARCHITECTURE arqmux2x1 OF mux2x1 IS
BEGIN
	WITH s2 SELECT
		salmux2x1 <=
		ua WHEN '0',
		ul WHEN '1';
END ARCHITECTURE arqmux2x1;