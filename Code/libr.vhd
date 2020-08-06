-- ∆ήλωση βιβλιοθήκης και πακέτων
--Το πρώτο µέρος του κώδικα είναι η δήλωση της βιβλιοθήκης ieee η οποία
--περιλαµβάνει µια σειρά πακέτων προτυποποιηµένων από το ινστιτούτο ΙΕΕΕ. Tα βασικά πακέτα
--που ανήκουν στη βιβλιοθήκη αυτή είναι: 
--• std_logic_1164, που εισάγει τον τύπο δεδοµένων std_logic και
--std_logic_vector και επιτρέπει τη χρήση περισσοτέρων τιµών σε ένα σήµα εκτός από τις
--απλές τιµές '0' και '1'. Τέτοιες επιπλέον τιµές είναι η απαραίτητη κατάσταση «υψηλής
--εµπέδησης» ('Ζ'), η «αδιάφορη» κατάσταση ('-'), η «άγνωστη» κατάσταση ('Χ') και άλλες
--τιµές που είναι χρήσιµες σε ορισµένες περιπτώσεις.
--• numeric_std, που εισάγει τους τύπους SIGNED και UNSIGNED, µε βάση τον τύπο
--std_logic. Το πακέτο αυτό επιτρέπει την εκτέλεση αριθµητικών πράξεων µε
--προσηµασµένους ή µη προσηµασµένους αριθµούς. 
--Ένα µη προτυποποιηµένο πακέτο που ανήκει στη βιβλιοθήκη ieee είναι το πακέτο
--std_logic_arith. Το πακέτο αυτό είναι shareware και ορίζει τύπους σηµάτων SIGNED και
--UNSIGNED. Επίσης, επιτρέπει την τέλεση αριθµητικών πράξεων (+, -, *, /) ανάµεσα σε σήµατα
--των παραπάνω τύπων. Άρα, για τη χρήση προσηµασµένων αριθµών σε σήµατα αριθµητικών
--κυκλωµάτων απαιτείται ο ορισµός ή του πακέτου numeric_std ή του πακέτου std_logic_arith.

LIBRARY ieee;                       --Δήλωση βιβλιοθήκης
USE ieee.std_logic_1164.all;        --Χρήση πακέτου
USE ieee.std_logic_unsigned.all;    --Χρήση πακέτου     
--------------------------------------------------------
ENTITY counter IS                  --Δήλωση οντότητας με όνομα counter 
PORT(...);                         --Δήλωση Port
END counter;                       --Τέλος οντότητας
--------------------------------------------------------
ARCHITECTURE behaviour OF counter IS --Δήλωση αρχιτεκτονικής 
SIGNAL ...                           --Δήλωση σημάτων

PROCESS()                            --Δήλωση διεργασίας
BEGIN                                --Αρχή

END process;                         --Τέλος

END behaviour;                       --Τέλος αρχιτεκτονικής