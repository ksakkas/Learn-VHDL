--Μετατροπή τύπων
--αν προσπαθήσουμε να αναθέσουμε μια τιμή τύπου integer σε ένα σήμα με τύπο
--std_logic_vector, τότε ο compiler θα παράγει μήνυμα σφάλματος, ακόμη κι αν οι τιμές
--βρίσκονται σε συμβατά μεταξύ τους όρια. Έστω ότι γίνονται οι παρακάτω δηλώσεις σημάτων
SIGNAL m :integer RANGE 0 to 255 :=128;
SIGNAL y :std_logic_vector(7 downto 0);
--Τότε, η παρακάτω ανάθεση της τιμής του m στο y
y<=m;
--θα παράγει στο Quartus II το εξής μήνυμα σφάλματος
--Error (10476): type of identifier "m" does not agree with its usage as
--"std_logic_vector" type

--Τα διάφορα πακέτα μας δίνουν τη δυνατότητα να μετατρέπουμε τύπους δεδομένων από τη μια
--μορφή στην άλλη. Έτσι, η παραπάνω λανθασμένη ανάθεση μπορεί να διορθωθεί, αν
--μετατρέψουμε πρώτα το σήμα integer σε σήμα std_logic_vector:

y<=conv_std_logic_vector(m,8);

conv_std_logic_vector(<signal>, <number_of_bits>) --περιέχεται στο πακέτο std_logic_arith.

--Αυτόματη μετατροπή τύπου
--Οι τύποι std_logic και std_logic_vector έχουν τον ίδιο «βασικό τύπο» (std_logic).
--Έτσι, ένα στοιχείο σήματος std_logic_vector μπορεί να αποδοθεί ευθέως σε σήμα
--std_logic:
SIGNAL s1 : std_logic_vector(7 downto 0);
SIGNAL s2 : std_logic;
-----------------------------
s2<=s1(7);
--Αντίστοιχα ισχύουν για τα σήματα bit και bit_vector.
