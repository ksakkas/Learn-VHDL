--Να σχεδιαστεί ένας δυαδικός αποκωδικοποιητής 2:4 με σήματα τύπου bit_vector

--Χρήση WHEN:
--Έκφραση_ανάθεσης WHEN <συνθήκη> ELSE
--Ανάθεση_τιμής WHEN <συνθήκη> ELSE

--decoder 2:4
ENTITY decoder1 IS
PORT(x : IN bit_vector(1 downto 0);
y : OUT bit_vector(3 downto 0));
END decoder1;
-----------------------------------------
ARCHITECTURE decoder2_1 OF decoder1 IS
BEGIN
y<="0001" WHEN x="00" ELSE
"0010" WHEN x="01" ELSE
"0100" WHEN x="10" ELSE
"1000";
END decoder2_1;