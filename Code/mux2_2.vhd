LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------------
ENTITY mux2_1 IS
PORT (A,B,s : IN std_logic;
          F : OUT std_logic);
END mux2_1;
----------------------------------------------------
ARCHITECTURE structural OF mux2_1 IS
 SIGNAL m1, m2 : std_logic;
 BEGIN
 WITH s SELECT
 F<= A WHEN '0',
 B WHEN OTHERS;
 END structural;