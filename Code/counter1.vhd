--------------------------------------------------
ENTITY counter1 IS
PORT(clk : IN bit;
	 q   : OUT INTEGER RANGE 0 TO 15);
END counter1;
--------------------------------------------------
ARCHITECTURE behaviour OF counter1 IS
SIGNAL m : INTEGER RANGE 0 TO 15;
BEGIN
PROCESS(clk)
BEGIN
IF clk 'event AND clk='1' THEN
m<= m+1;
ELSE
m<=m;
END IF;
END process;
q<=m;
END behaviour;
