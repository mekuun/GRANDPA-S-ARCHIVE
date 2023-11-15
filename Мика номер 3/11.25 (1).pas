Const N = 5; 
type TArray = array[1..N] of real;

function Min(var X:Tarray):real;
var i: integer; mini:real;
begin 
mini := maxint;
for i := 1 to N do if X[i] < mini then mini := X[i];
Min := mini
end;

function Max(var X:Tarray):real;
var i: integer; maxi:real;
begin 
maxi := - maxint - 1;
for i := 1 to N do if X[i] > maxi then maxi := X[i];
Max := maxi
end;

var a, b, c, bc: TArray; i:integer;

begin

for i := 1 to N do read(a[i]);
for i := 1 to N do read(b[i]);
for i := 1 to N do read(c[i]);
for i := 1 to N do bc[i] := b[i] + c[i];

if (min(a) < max(b)) and ((max(a) = 0) or (min(bc) = 0)) then write('Error')
else if min(a) < max(b) then write((min(b) / max(a) + max(c) / min(bc)):10:10)
else if min(a) >= max(b) then write((max(bc) + min(c)):10:10);

end.
