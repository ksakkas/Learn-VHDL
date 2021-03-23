LIBRARY ieee;
USE ieee.std_logic_1164.all;
------------------------------------------------
ENTITY seg_7 IS
PORT(c : IN std_logic_vector (3 DOWNTO 0);
ex1: OUT std_logic_vector(6 DOWNTO 0));
END seg_7;
------------------------------------------------
ARCHITECTURE behaviour OF seg_7 IS
BEGIN
WITH c SELECT
ex1<= "1111110" WHEN "0000",
	  "0000110" WHEN "0001",
	  "1101101" WHEN "0010",
	  "1111001" WHEN "0011",
	  "0110011" WHEN "0100",
	  "1011011" WHEN "0101",
	  "1011111" WHEN "0110",
	  "1110000" WHEN "0111",
	  "1111111" WHEN "1000",
	  "1111011" WHEN "1001",
	  "0000001" WHEN OTHERS;
END behaviour;