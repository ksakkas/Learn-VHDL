LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
------------------------------
ENTITY signed_arith IS
PORT(X,Y :IN std_logic_vector(3 downto 0);
	 Cin :IN std_logic;
	   S :OUT std_logic_vector(3 downto 0);
	Cout :OUT std_logic;
Overflow :OUT std_logic);
END signed_arith;
-------------------------------
ARCHITECTURE addition OF signed_arith IS
 signal X_sgn, Y_sgn, S_sgn : SIGNED(3 downto 0);
 signal sum_sgn : SIGNED(4 downto 0);
BEGIN
 X_sgn<=SIGNED(X);
 Y_sgn<=SIGNED(Y);
 sum_sgn<=('0'& X_sgn) + ('0'& Y_sgn) + Cin;
 --sum_sgn<=('0'& X_sgn) - ('0'& Y_sgn) + Cin;--subtraction
 S_sgn<=sum_sgn(3 downto 0);
 Cout<=sum_sgn(4);
 overflow<=sum_sgn(4) xor X_sgn(3) xor Y_sgn(3) xor sum_sgn(3);
 S<=std_logic_vector(S_sgn);
END addition;
----------------------------------
