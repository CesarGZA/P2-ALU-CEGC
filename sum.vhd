LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_signed.ALL;

ENTITY sum IS
	PORT (
		a, b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		cin : IN STD_LOGIC;
		salsum : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
		cout : OUT STD_LOGIC);
END ENTITY sum;

ARCHITECTURE arqsum OF sum IS
	SIGNAL mid : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	mid <= ('0' & a) + ('0' & b) + cin; 
	cout <= mid(3);
	salsum <= mid(2 DOWNTO 0);
END ARCHITECTURE arqsum;