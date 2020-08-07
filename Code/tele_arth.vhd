--Τελεστές αριθμητικών πράξεων
-- + Πρόσθεση result<=x + y;
-- - Αφαίρεση result<=x–y;
-- * Πολλαπλασιασμός result<=x * y;
-- / (ιαίρεση result<=x / y;
-- ** Ύψωση σε δύναμη result<=x **2;
-- ABS Απόλυτη τιμή result<=ABS x; Απόλυτη τιμή
-- REM Υπόλοιπο(remainder) result<=x REM y; Υπόλοιπο διαίρεσης x/y
--MOD Modulo result<=x MOD y; x REM y +a*y (a=1 αν x και y έχουν ίδιο πρόσημο, αλλιώς 0)

--Να περιγραφεί σε VHDL ένα κύκλωμα προσημασμένου πολλαπλασιασμού,
--όπου οι είσοδοι/έξοδοι υπακούουν στο πρότυπο std_logic_vector

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