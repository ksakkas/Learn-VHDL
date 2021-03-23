LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
------------------------------
ENTITY arithm1 IS
PORT(X, Y : IN std_logic_vector(3 downto 0);
	  Cin : IN std_logic;
	    S : OUT std_logic_vector(3 downto 0);
	  sum : BUFFER std_logic_vector(4 downto 0);
     Cout : OUT std_logic;
 overflow : OUT std_logic);
END arithm1;
-------------------------------
ARCHITECTURE addition OF arithm1 IS
BEGIN
 sum<=('0'& X) + ('0'& Y) + Cin;
 S<=sum(3 downto 0);
 Cout<=sum(4);
 overflow<=sum(4) xor X(3) xor Y(3) xor sum(3);
END addition;
