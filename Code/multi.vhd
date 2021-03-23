LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
ENTITY multi IS --signed multiplication
PORT(x, y : IN std_logic_vector(7 downto 0);
  product : OUT std_logic_vector(15 downto 0));
END multi;
ARCHITECTURE sign_prod OF multi IS
 SIGNAL a_s, b_s : SIGNED(7 downto 0);
 SIGNAL prod_s : SIGNED(15 downto 0);
BEGIN
 a_s<=SIGNED(x);
 b_s<=SIGNED(y);
 prod_s<=a_s*b_s;
 product<=std_logic_vector(prod_s);
END sign_prod;
