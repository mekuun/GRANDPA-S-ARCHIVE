const n = 7;
var x, y: array [1..n] of real; maxr, r, c: real; i, j, t1, t2: integer;

begin 

maxr := 0;
for i := 1 to 2 * n do begin
read(c);
if i mod 2 = 1 then x[(i + 1) div 2] := c else y[(i) div 2] := c
end;

for i := 1 to n do  
for j := i+1 to n do begin
r := sqrt(sqr(x[i] - x[j]) + sqr(y[i] - y[j]));
if r > maxr then begin maxr := r; t1 := i; t2 := j end;
end;

//for i := 1 to n do writeln(x[i]:5:5, ' ', y[i]:5:5)
write(t1, ' ', t2)

end.
