program first;

var
  x, a, b, c:real;

begin
	read(x);
	a := (exp(x) + exp(-1 * x))/2;
	b := 1 + abs(x);
	c := exp(ln(1 + x*x) * x);
	if a > b then 
	begin
		a := a + b;
    b := a - b;
    a := a - b;
	end;
	if b > c then
	begin
		b := b + c;
    c := b - c;
    b := b - c;
		if a > b then 
		begin
			a := a + b;
			b := a - b;
			a := a - b;
		end;
	end;
	writeln(a,b,c);
end.		
