--Στην VHDL τα ονόματα μπορούν να έχουν οποιονδήποτε αλφαριθμητικό χαρακτήρα πεζό η κεφαλαίο καθώς και
--τον χαρακτήρα ‘_’ ( Α-Ζ, a-z, _ , 0-9). Οι περιορισμοί που υπάρχουν στην απόδοση ονομάτων
--είναι οι εξής :
-- Το όνομα δεν μπορεί να έχει δύο συνεχόμενους χαρακτήρες ‘_’ (π.χ. ono__ma).
-- Το όνομα του αντικειμένου δεν μπορεί να ξεκινάει ή να τελειώνει σε ‘_’ (π.χ. _name ή name_).
-- Δεν μπορεί να ξεκινάει με αριθμό (π.χ. 1name).
-- Δεν μπορεί να ταυτίζεται με λέξη-κλειδί της γλώσσας VHDL (π.χ. ENTITY, ARCHITECTURE, FILE, κ.λπ.)
--Στη VHDL δεν υπάρχει διαχωρισμός μεταξύ πεζών και κεφαλαίων γραμμάτων, δηλαδή το ‘Κ’
--είναι το ίδιο με το ‘k’.

--Δήλωση σταθερών
--Η μορφή δήλωσης μιας σταθεράς είναι:
CONSTANT όνομα σταθεράς : τύπος := τιμή σταθεράς;

--Δήλωση σημάτων
--Τα σήματα μπορούμε να τα ορίσουμε σε τρεις περιοχές μέσα στον κώδικα. Στην περιοχή
--δηλώσεων της οντότητας (entity), στο τμήμα δήλωσης της αρχιτεκτονικής και στο τμήμα
--δηλώσεων ενός πακέτου (package). Η μορφή ορισμού ενός σήματος είναι :
SIGNAL όνομα σήματος : τύπος σήματος
--Ο τύπος ενός σήματος προσδιορίζει τις τιμές που μπορεί να λάβει το σήμα στην συγκεκριμένη περιγραφή

--Δήλωση μεταβλητών
--Τα αντικείμενα δεδομένων τύπου μεταβλητή (VARIABLE) χρησιμοποιούνται για την προσωρινή
--αποθήκευση τιμών που προκύπτουν από την τέλεση αριθμητικών πράξεων καθώς και για τις
--μεταβλητές ενός δείκτη μέσα σε βρόγχους. Η δήλωση μιας μεταβλητής γίνεται με τον εξής τρόπο:
VARIABLE όνομα μεταβλητής : τύπος μεταβλητής;
