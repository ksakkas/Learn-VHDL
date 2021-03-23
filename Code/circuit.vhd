library ieee; 
use ieee.std_logic_1164.all;  
entity circuit is
port  ( x, y, z	: in std_logic;
		f	: out std_logic );  
end entity circuit;
architecture boolean_eqn of circuit is  
begin
f <= (x or (y and not z)) and not (y and z);  
end architecture boolean_eqn; 
