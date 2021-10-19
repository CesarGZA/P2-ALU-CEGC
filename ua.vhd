LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY UA IS
    PORT (
        a, b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        s : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        cin : IN STD_LOGIC;
        salua : OUT STD_LOGIC_VECTOR(2 DOWNTO 0); 
        cout : OUT STD_LOGIC);
END ENTITY UA;

ARCHITECTURE arqUA OF UA IS
    SIGNAL cablemux4B : STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
    bMux : ENTITY work.mux4x1(arqmux4x1) PORT MAP (s, b, cablemux4B);
    sumador : ENTITY work.sum(arqsum) PORT MAP (a, cablemux4B, cin, salua, cout);

END ARCHITECTURE arqUA;