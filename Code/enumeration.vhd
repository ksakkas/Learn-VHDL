--Τύποι απαρίθμησης (enumeration)
--Ο τύπος απαρίθμησης περιλαμβάνει ένα σύνολο τιμών, με τη μορφή συμβόλων, σε μια ορισμένη
--σειρά. Το σύνολο πρέπει να περιλαμβάνεται («απαριθμείται») σε μια λίστα:
TYPE όνομα_τύπου IS (λίστα τιμών)

--Ένας προκαθορισμένος τύπος απαρίθμησης είναι ο std_ulogic, που ορίζεται ως εξής:
TYPE STD_ULOGIC IS ('U', 'X', '0', '1', 'Z', 'W', 'L', 'H', '-');

TYPE fsm_states IS (A, B, C, D, E);
TYPE my_symbols IS (first, second, third);

--Στη συνέχεια, κάθε σήμα τύπου fsm_states ή my_symbols μπορεί να πάρει ως τιμή μόνον
--μια από τις τιμές της λίστας.