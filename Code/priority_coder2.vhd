LIBRARY ieee;
USE ieee.std_logic_1164.all;
------------------------------
ENTITY priority_coder IS
PORT(X : IN std_logic_vector(3 downto 0);
Y : OUT std_logic_vector(1 downto 0);
z : OUT std_logic);
END priority_coder;
------------------------------
ARCHITECTURE behaviour OF priority_coder IS
BEGIN
Y<="11" WHEN X(3)='1' ELSE
   "10" WHEN X(2)='1' ELSE
   "01" WHEN X(1)='1' ELSE
   "00";
z<='0' WHEN X="0000" ELSE '1';
END behaviour;
