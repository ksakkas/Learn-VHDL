--Βιβλιοθήκες και πακέτα
--Τα πακέτα μπορούμε να τα χωρίσουμε σε δύο μέρη, στην δήλωση του πακέτου και στο
--σώμα του πακέτου, του οποίου η χρήση είναι προαιρετική. Η γενική μορφή ενός πακέτου είναι:
PACKAGE όνομα_πακέτου IS
[Δηλώσεις σημάτων]
[Δηλώσεις δομικών στοιχείων]
END όνομα πακέτου ;
-------------------------------------------
PACKAGE BODY όνομα_πακέτου IS
Κώδικας υποπρογράμματος (function ή procedure)
END PACKAGE BODY [όνομα_πακέτου]

--Παράδειγμα: Στο πακέτο γίνεται η δήλωση δύο σταθερών N, NF, ενός υποτύπου sample και ενός
--σύνθετου τύπου πίνακα. Προφανώς, οι δηλώσεις αυτές δεν θα επαναληφθούν στα επί μέρους
--τμήματα κώδικα, όπου θα χρησιμοποιηθούν οι τύποι και οι σταθερές. Τέλος, γίνεται η δήλωση
--των δομικών στοιχείων που θα περιλαμβάνει η σχεδίαση. Προφανώς, η δήλωση αυτή δεν θα
--επαναληφθεί στο αντίστοιχο τμήμα της αρχιτεκτονικής της ανώτερης ιεραρχικής οντότητας.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
------------------------------
PACKAGE my_package IS
--CONSTANT DECLARATIONS----------------------------------------
CONSTANT N: INTEGER RANGE 0 TO 32 :=8;--Number of bits in samples
CONSTANT NF: NATURAL:=4;--Number of regs in delay line
--TYPE DECLARATIONS--------------------------------------------
SUBTYPE sample IS SIGNED(8 downto 0);
TYPE OneD IS ARRAY(NATURAL RANGE <>) OF sample;
--COMPONENT DECLARATIONS---------------------------------------
COMPONENT reg IS --DFF
PORT (d_in: IN sample;
clock, Resetn : IN std_logic;
q_out: OUT sample);
END COMPONENT;
END PACKAGE;

--Ο καταχωρητής reg αποτελεί το δομικό στοιχείο της σχεδίασης. Έχει είσοδο και έξοδο τύπου
--sample. Τα διαδοχικά στιγμιότυπά του καταχωρητή υλοποιούν τη γραμμή. O κώδικάς του
--δίνεται παρακάτω και πρέπει να είναι αποθηκευμένος στο φάκελο εργασίας του project.
--Προφανώς, είναι απαραίτητο να γίνει χρήση (USE) του παραπάνω πακέτου my_package.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.my_package.all;
---------------------------------------------
ENTITY reg IS
PORT (d_in: IN sample;
clock, Resetn: IN std_logic;
q_out: OUT sample);
END reg;
---------------------------------------------
ARCHITECTURE behaviour OF reg IS
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

--Τέλος, δίνεται η ανώτερη ιεραρχική οντότητα για τη γραμμή καθυστέρησης, η οποία περιγράφει
--τη γραμμή μόνο με σύγχρονες εντολές, επαναλαμβάνοντας NF (εδώ NF=4) φορές τον
--καταχωρητή reg, με τη βοήθεια εντολής GENERATE. Ας προσεχθεί ο ρόλος του μονοδιάστατου
--πίνακα q, που αποτελείται από στοιχεία τύπου sample. O πίνακας αυτός περιέχει τις διαδοχικές
--εξόδους των καταχωρητών, αφού σε κάθε στιγμιότυπο i που δημιουργείται μέσα στη
--FOR...GENERATE το στοιχείο q(i) του πίνακα αντιστοιχίζεται στην έξοδο q_out του
--καταχωρητή. Κάθε προηγούμενη έξοδος γίνεται είσοδος στον επόμενο καταχωρητή, ώστε να
--δημιουργηθεί η σειριακή γραμμή καθυστέρησης.
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.my_package.all;
-----------------------------------------------------
ENTITY delay_line IS --Delay line NF-positions-deep, top level
PORT(shift_in : IN sample;
clock, Resetn: IN std_logic;
shift_out: OUT sample);
END delay_line;
ARCHITECTURE delay OF delay_line IS
SIGNAL q : OneD(0 TO NF);--Array q holds the outputs of regs
BEGIN
q(0)<=shift_in;
gen1: FOR i IN 1 TO NF GENERATE
inst: reg PORT MAP (q(i-1), clock, Resetn, q(i));
END GENERATE;
shift_out<=q(NF);
END delay;

--Σε βιβλιοθήκες που ορίζονται από τον χρήστη, ο φάκελος αποθήκευσης του κώδικα είναι
--συνήθως ο φάκελος εργασίας. Μια τέτοια βιβλιοθήκη εργασίας ονομάζεται work και μπορεί
--προαιρετικά να δηλωθεί ως εξής:
library work;
--Στην πράξη, η βιβλιοθήκη work δεν χρειάζεται να δηλωθεί ως ξεχωριστή βιβλιοθήκη, αφού ο
--φάκελος εργασίας είναι αυτόματα ορατός. Το πακέτο του χρήστη δηλώνεται ως εξής:
USE όνομα_βιβλιοθήκης.όνομα_πακέτου.all ;

