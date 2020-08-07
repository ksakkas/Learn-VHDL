--Η δήλωση GENERIC MAP
--Έστω ότι έχουμε περιγράψει ένα δομικό στοιχείο (COMPONENT) με τη γενίκευση
--GENERIC. Τότε είναι δυνατό να μεταφέρουμε τιμές στις γενικευμένες σταθερές από μια
--ανώτερη ιεραρχική οντότητα, κατά τη δημιουργία στιγμιοτύπων του δομικού στοιχείου. Η
--δήλωση με την οποία μεταφέρονται οι τιμές είναι η GENERIC MAP. Με τον τρόπο αυτό, το
--δομικό στοιχείο μπορεί να χρησιμοποιηθεί με πραγματικά γενικό τρόπο, αφού κάθε στιγμιότυπο
--μπορεί να είναι προσαρμοσμένο σε διαφορετικές ανάγκες.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------
ENTITY reg_gen IS
GENERIC(N : Integer RANGE 1 TO 32 :=8);
PORT (d_in: IN std_logic_vector(N-1 downto 0);
clock, Resetn: IN std_logic;
q_out: OUT std_logic_vector(N-1 downto 0));
END reg_gen;
---------------------------------------------
ARCHITECTURE behaviour OF reg_gen IS
BEGIN
PROCESS (Resetn, clock)
BEGIN
IF Resetn='0' THEN
q_out<=(OTHERS=>'0');
ELSIF clock'event AND clock='1' THEN
q_out<=d_in;
END IF;
END process;
END behaviour;

--DECLARATION OF COMPONENT--------------------------
COMPONENT reg_gen IS --DFF
PORT (d_in: IN std_logic_vector(N-1 downto 0);
clock, Resetn : IN std_logic;
q_out: OUT std_logic_vector(N-1 downto 0));
END COMPONENT;
----------------------------------------------------
--INSTANTIATION OF COMPONENT------------------------
inst1: reg_gen GENERIC MAP (16) PORT MAP(d, clk, Rstn, q);
----------------------------------------------------