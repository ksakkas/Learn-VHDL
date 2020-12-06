library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity D_FF is
port( d, clk,reset : in std_logic;
		q, q_bar: out std_logic);	  
end D_FF;

architecture Behavioral of D_FF is
	signal nand_1,nand_2 : std_logic;
	signal q_tmp,q_bar_tmp : std_logic:='0';
begin
nand_1<= d nand clk;
nand_2<= not d nand clk;
q_tmp<= nand_1 nand q_bar_tmp;
q<= q_tmp;
q_bar_tmp<= nand_2 nand q_tmp;
q_bar<= q_bar_tmp;
end Behavioral;
