LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY alucegc IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		cin : IN STD_LOGIC;

		salAlu : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
		cout : OUT STD_LOGIC
	);
END;

ARCHITECTURE arqALU OF alucegc IS
	SIGNAL UA, UL : STD_LOGIC_VECTOR (2 DOWNTO 0);
BEGIN

	uAritmetic : ENTITY work.ua(arqUA) PORT MAP (a, b, sel(1 DOWNTO 0), cin, UA, cout);
	uLogic : ENTITY work.ul(arqUL) PORT MAP (a, b, sel(1 DOWNTO 0), UL);
	mux : ENTITY work.mux2x1(arqmux2x1) PORT MAP(UA, UL, sel(2), salAlu);
END;