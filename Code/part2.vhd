LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------------------
ENTITY part2 IS
PORT (A, B, C, D : IN std_logic_vector (7 downto 0);
               s : IN std_logic_vector(1 downto 0);
               F : OUT std_logic_vector (7 DOWNTO 0));
END part2;
----------------------------------------------------------
ARCHITECTURE behaviour OF part2 IS
BEGIN
WITH s SELECT
F<= A WHEN "00",
B WHEN "01",
C WHEN "10",
D WHEN OTHERS;
END behaviour;