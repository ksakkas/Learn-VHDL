--Να σχεδιαστεί καταχωρητής ολίσθησης σειριακής εισόδου-σειριακής
--εξόδου, με τέσσερα Flip-Flops στη σειρά.

-----------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--------------------------------
ENTITY shift_reg4 IS
PORT(serial_in: IN std_logic;
clock, Resetn: IN std_logic;
serial_out: OUT std_logic);
END shift_reg4;
---------------------------------
ARCHITECTURE behaviour OF shift_reg4 IS
SIGNAL q : std_logic_vector(0 to 3);
BEGIN
PROCESS(clock, Resetn)
BEGIN
IF Resetn='0' THEN
q<=(OTHERS=>'0');
ELSIF clock'EVENT AND clock='1' THEN
q(0)<=serial_in;
q(1)<=q(0);
q(2)<=q(1);
q(3)<=q(2);
END IF;
serial_out<=q(3);
END PROCESS;
END behaviour;