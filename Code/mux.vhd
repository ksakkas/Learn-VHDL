LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------------------
ENTITY mux IS
PORT (A, B, C, D : IN std_logic_vector (3 downto 0);
	           s : IN std_logic_vector(1 downto 0);
			   F : OUT std_logic_vector (3 DOWNTO 0));
END mux;
----------------------------------------------------------
ARCHITECTURE behaviour OF mux IS
BEGIN
F<= A WHEN s="00" ELSE
    B WHEN s="01" ELSE
    C WHEN s="10" ELSE
    D;
END behaviour;