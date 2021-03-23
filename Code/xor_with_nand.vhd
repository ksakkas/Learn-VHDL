library IEEE; 
use IEEE.std_logic_1164.all; 
entity xor_with_nand is 
port (X, Y : in STD_LOGIC; 
		F  : out STD_LOGIC); 
end xor_with_nand; 
architecture xor_comp of xor_with_nand is 
signal a, b, c: STD_LOGIC; 
begin 
a <= (not X) or (not Y); 
b <= X nand a; 
c <= Y nand a; 
F <= (not b) or (not c); 
end xor_comp;
