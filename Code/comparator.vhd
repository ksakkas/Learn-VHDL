--Να υλοποιηθεί ένας συγκριτής μεγέθους δύο μη-προσημασμένων αριθμών a,
--b με εύρος 4-bit. Ο συγκριτής να παράγει λογικό 1 στην έξοδο, όταν a>b.

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

--Το ίδιο με χρήση πακέτου ieee.std_logic_unsigned.all
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
------------------------------
ENTITY comparator1 IS
PORT(a, b : IN std_logic_vector(3 downto 0);
agtb : OUT std_logic);
END comparator1;
------------------------------
ARCHITECTURE compare OF comparator1 IS
BEGIN
agtb<='1' WHEN a>b ELSE '0';
END compare;
------------------------------