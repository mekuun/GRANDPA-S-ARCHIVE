const n = 2;
type Tarray=array[1..n+1] of real;

function horner(var A:Tarray; X:real):real;
var i:integer;
begin
horner := A[1];
for i := 2 to (n + 1) do horner := horner * x + A[i]
end;

var P, Q: Tarray; i:integer; a:real;

begin

for i := 1 to (n + 1) do read(P[i]);
for i := 1 to (n + 1) do read(Q[i]);
read(a);

write(horner(P, a + horner(P, a + 1) * horner(Q, a)):10:10);

end.