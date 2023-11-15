const n = 5;
const m = 5;
var C: array [1..n, 1..m] of integer; B: array [1..n] of boolean; i, j, j1, j2 :integer;

begin

for i := 1 to n do B[i] := False;

for i := 1 to n do 
for j := 1 to m do 
read(C[i,j]);

for i := 1 to n do 
for j1 := 1 to m do  
for j2 := j1 + 1 to m do
if (j1 <> j2) and (C[i, j1] = C[i, j2]) then begin B[i] := True; break end;

for i := 1 to n do write(B[i], ' ')

end.
