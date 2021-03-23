entity cos is
port (theta: in real; result: out real;);  
end entity;

architecture fixed_length_series of cos is  
begin
summation : process (theta) is
variable sum, term : real;  begin
sum := 1.0;
term := 1.0;
for n in 1 to  9 loop
term := (-term)*theta**2/real(((2*n-1)*2*n));  sum := sum + term;
end loop;  result <= sum;
end process summation;
end architecture fixed_length_series;
