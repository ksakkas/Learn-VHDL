--Η εντολή WAIT
--Η εντολή αυτή αποτελεί έναν εναλλακτικό τρόπο για να
--καθοριστεί πότε μια διεργασία θα ανταποκριθεί σε αλλαγές των σημάτων. Όπως αναφέρθηκε,
--όταν υπάρχει η WAIT η διεργασία δεν περιλαμβάνει λίστα ευαισθησίας. Μπορεί να συνοδεύεται
--από μια συνθήκη (wait until), από λίστα σημάτων (wait on) ή από μια χρονική έκφραση
--(wait for). Οι τρεις τρόποι σύνταξης περιγράφονται παρακάτω:

[Ετικέτα:] WAIT UNTIL συνθήκη;
[Ετικέτα:] WAIT ON λίστα_ευαισθησίας;
[Ετικέτα:] WAIT FOR χρονική_έκφραση;

--Παράδειγμα:
SIGNAL clock, z : bit;
WAIT UNTIL not clock;
--Με την παραπάνω εντολή η διεργασία βρίσκεται σε αναμονή και δεν εκτελείται, όσο το σήμα
--clock είναι '1'. Η εκτέλεση συνεχίζεται όταν clock= '0'.

WAIT UNTIL clock’event AND clock = '1';
z<= '1';
--H παραπάνω χρήση της WAIT είναι ισοδύναμη με την εντολή
IF clock’event AND clock= '1' THEN
z<= '1';
--Τέλος, η εντολή WAIT FOR χρησιμοποιείται σε προσομοίωση κυκλωμάτων, όπου ιδιαίτερο
--ρόλο παίζει ο χρόνος