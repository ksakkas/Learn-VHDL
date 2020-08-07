--Η εντολή WHEN…ELSE
--Η σύγχρονη εντολή WHEN…ELSE πραγματοποιεί ανάθεση τιμής σε σήμα υπό συνθήκη και
--μοιάζει με την ακολουθιακή εντολή IF. Η σύνταξη της εντολής είναι ως εξής:
Έκφραση_ανάθεσης WHEN συνθήκη ELSE
τιμή_ανάθεσης WHEN συνθήκη ELSE
…
τμή ανάθεσης;
--Η παρακάτω ανάθεση υπό συνθήκη υλοποιεί μια δομή πολυπλέκτη
F<=x WHEN s= ‘0’ ELSE y;

--Στο παράδειγμα αυτό σχεδιάζεται ένας πολυπλέκτης τεσσάρων καναλιών με τη
--βοήθεια της εντολής WHEN…ELSE.

LIBRARY ieee;
USE ieee.std_logic_1164.all;
---------------------------------------------------------
ENTITY mux IS
PORT (Α, Β, C, D : IN std_logic_vector (3 downto 0);
s : IN std_logic_vector(1 downto 0);
F : OUT std_logic_vector (3 DOWNTO 0));
END mux;
----------------------------------------------------------
ARCHITECTURE behaviour OF mux IS
BEGIN
F<= A WHEN s="00" ELSE
B WHEN s="01" ELSE
C WHEN s="10" ELSE
D;
END behaviour;