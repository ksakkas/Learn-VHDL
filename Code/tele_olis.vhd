--Τελεστές ολίσθησης
--SLL y<=x SLL n Λογική ολίσθηση αριστερά κατά n θέσεις. Οι θέσεις στα δεξιά γεμίζουν με ‘0’.y=0100
--SRL y<=x SRL n Λογική ολίσθηση δεξιά κατά n θέσεις. Οι θέσεις στα αριστερά γεμίζουν με ‘0’. y=0011
--SLA y<=x SLA n Ολίσθηση προς τα αριστερά. Οι θέσεις στα δεξιά γεμίζουν με το δεξιότερο bit. y=0111
--SRA y<=x SRA n Ολίσθηση προς τα δεξιά. Οι θέσεις στα αριστερά γεμίζουν με το αριστερότερο bit. y=1111
--ROL y<=x ROL n Περιστροφική ολίσθηση προς τα αριστερά. y=0111
--ROR y<=x ROR n Περιστροφική ολίσθηση προς τα δεξιά. y=0111

--Γίνεται χρήση της εντολής y<=x sll 2, σε σήματα τύπου unsigned. Τα σήματα
--εισόδου/εξόδου στη δήλωση PORT είναι του τύπου std_logic_vector, ώστε να τηρείται το
--πρότυπο της βιομηχανίας.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-----------------------------
ENTITY shift_op IS
PORT(x : IN std_logic_vector(7 downto 0);
y : OUT std_logic_vector(7 downto 0));
END shift_op;
-----------------------------
ARCHITECTURE shift_test OF shift_op IS
SIGNAL x1, y1 : UNSIGNED(7 downto 0);
BEGIN
x1<= UNSIGNED(x);
y1<=x1 sll 2;
y<=std_logic_vector(y1);
END shift_test;