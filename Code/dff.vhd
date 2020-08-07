--Flip Flop τύπου D
--Τα Flip Flop είναι κυκλώματα τα οποία αποτελούνται από μία είσοδο δεδομένων D, μία είσοδο
--ρολογιού clk και δύο εξόδους Q και QN

--Να περιγραφεί σε VHDL η λειτουργία ενός D Flip-Flop
--Κώδικας για την περιγραφή ενός D Flip-Flop που διεγείρεται με θετικό μέτωπο παλμού
--ρολογιού.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------
ENTITY dff_pos IS
PORT (d, clock: IN std_logic;
q : OUT std_logic);
END dff_pos;
---------------------------------------------
ARCHITECTURE behaviour OF dff_pos IS
BEGIN
PROCESS (clock)
BEGIN
IF clock'event AND clock='1' THEN
q<=d;
END IF;
END process;
END behaviour;

