LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
------------------------------
ENTITY comparator1 IS
PORT(a, b : IN std_logic_vector(3 downto 0);
     agtb : OUT std_logic);
END comparator1;
------------------------------
ARCHITECTURE compare OF comparator1 IS
SIGNAL a_uns, b_uns : UNSIGNED(3 downto 0);
BEGIN
a_uns<=UNSIGNED(a);
b_uns<=UNSIGNED(b);
agtb<='1' WHEN a>b ELSE '0';
END compare;
