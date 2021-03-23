entity cos is
port (theta: in real; result: out real;);  
end entity;

architecture series of cos is  begin

P1: process (theta) is  variable sum, term, n: real;  
begin
sum := 1.0; term := 1.0; n := 0.0;  while abs term > abs (sum/1.0E6) 
loop
n := n + 2.0;
term := (-term)*(theta**2)/((n-1)*n);  sum := sum + term;
end loop;  result <= sum;
end process;

end architecture;
