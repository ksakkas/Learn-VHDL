library IEEE; 
use IEEE.std_logic_1164.all; 
entity and3 is 
port ( a, b, c : in STD_LOGIC; 
--inputs d : out STD_LOGIC); 
--outputs end and3; 
architecture data_flow of and3 is 
begin 
d <= a and b and c; 
end data_flow;
