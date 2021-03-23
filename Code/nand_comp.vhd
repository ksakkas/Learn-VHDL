library IEEE; 
use IEEE.std_logic_1164.all; 
entity nand_comp is 
port (a, b : in STD_LOGIC; 
-- inputs c : out STD_LOGIC); 
-- output end nand_comp ; 
architecture nand_behv of nand_comp is 
signal int: STD_LOGIC -- internal signal declaration 
begin 
int<= a and b; 
c <= not int; 
end nand_behv ;
