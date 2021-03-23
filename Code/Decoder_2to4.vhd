LIBRARY ieee;
USE ieee.std_logic_1164.all;
-------------------------------------------
ENTITY Decoder_2to4 IS
PORT(X :IN std_logic_vector (1 DOWNTO 0);
	 Y :OUT std_logic_vector (3 DOWNTO 0)); 
END Decoder_2to4;
-------------------------------------------
ARCHITECTURE behaviour OF Decoder_2to4 IS
BEGIN
 WITH X SELECT
 Y<= "0001" WHEN "00",
     "0010" WHEN "01",
     "0100" WHEN "10",
     "1000" WHEN OTHERS;
END behaviour;