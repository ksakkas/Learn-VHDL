--Τύποι προσημασμένων και μη προσημασμένων αριθμών (SIGNED/UNSIGNED)
--Οι τύποι SIGNED και UNSIGNED ορίζονται σε δύο διαφορετικά πακέτα της βιβλιοθήκης ieee.
--Το ένα είναι shareware της εταιρίας Synopsis και ονομάζεται std_logic_arith. Το άλλο είναι
--επίσημα προτυποποιημένο πακέτο και ονoμάζεται numeric_std.

--Όταν χρησιμοποιούμε το πακέτο std_logic_arith, θα πρέπει να μετατρέψουμε τα σήματα τύπου
--std_logic_vector σε SIGNED ή UNSIGNED και στη συνέχεια να εκτελέσουμε τις αριθμητικές
--πράξεις +, -, *, / κλπ. με βάση αυτά τα σήματα.

signal X_sgn, Y_sgn : SIGNED(7 downto 0);
signal sum, sub : SIGNED(8 downto 0);
sum<=X_sgn+Y_sgn;
sub<=X_sgn-Y_sgn;