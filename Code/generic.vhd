--Οι γενικές δηλώσεις σταθερών γίνονται με τη δεσμευμένη λέξη GENERIC και
--τοποθετούνται μέσα στο τμήμα της οντότητας, αμέσως πριν τη δήλωση PORT. Ας σημειωθεί ότι
--είναι η μόνη δήλωση που επιτρέπεται να τοποθετηθεί πριν από τα σήματα θυρών. Με τον τρόπο
--αυτό, οι γενικές σταθερές (generic constants) είναι πραγματικά καθολικές (global) και μπορούν
--να επηρεάσουν ακόμη και τις προδιαγραφές των θυρών.

LIBRARY ieee;                                --Δήλωση βιβλιοθήκης
USE ieee.std_logic_1164.all;                 --Χρήση πακέτου
USE ieee.std_logic_unsigned.all;             --Χρήση πακέτου
----------------------------------------------------------
ENTITY generic_decoder IS                    --Δήλωση οντότητας με όνομα generic_decoder 
GENERIC(N: NATURAL :=3);                     --Δήλωση μεταβλητής generic Ν = 3
PORT(x : IN std_logic_vector(N-1 downto 0);  --Δήλωση μεταβλητής εισόδου x με εύρος N-1 εώς 0
y : OUT std_logic_vector(2**N-1 downto 0));  --Δήλωση μεταβλητής εξόδου y με εύρος 2^N-1 εώς 0
END generic_decoder;                         --Τέλος οντότητας
-----------------------------------------------------------
ARCHITECTURE gen_dec OF generic_decoder IS   --Δήλωση αρχιτεκτονικής με όνομα gen_dec απο την οντότητα generic_decoder
BEGIN                                        --Αρχή
rep: FOR i IN 0 TO 2**N-1 GENERATE           --rep = αποτελέσματα
y(i) <= '0' WHEN i=x ELSE                    --y(i) = 0 αν i=x 
'1' ;                                        --y(i) = 1 αν i!=x 
END GENERATE;                                --Τέλος generate
END gen_dec;                                 --Τέλος αρχιτεκτονικής