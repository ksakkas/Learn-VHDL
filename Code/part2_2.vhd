LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------------------
ENTITY part2 IS
PORT (A, B : IN std_logic_vector (7 downto 0);
	     s : IN std_logic;
         F : OUT std_logic_vector(7 downto 0));
END part2;
----------------------------------------------------------
ARCHITECTURE behaviour OF part2 IS
BEGIN
WITH s SELECT
F<= A WHEN '0',
B WHEN OTHERS;
END behaviour;