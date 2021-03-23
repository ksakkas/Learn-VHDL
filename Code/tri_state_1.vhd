LIBRARY ieee;
USE ieee.std_logic_1164.all;
-------------------------------
ENTITY tri_state_1 IS
PORT(x : IN std_logic;
	en : IN std_logic;
	f  : OUT std_logic);
END tri_state_1;
-------------------------------
ARCHITECTURE tri OF tri_state_1 IS
BEGIN
f <= x WHEN en ='1' ELSE 'Z';
END tri;
