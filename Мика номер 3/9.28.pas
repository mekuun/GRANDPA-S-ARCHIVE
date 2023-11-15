const n = 3;
const m = 4;
var C: array [1..n, 1..m] of real; maxstlb, minstlb: array [1..m] of real; minstr, maxstr: array [1..n] of real;i, j:integer;

begin


for i := 1 to n do begin maxstr[i] := -21474; minstr[i] := 21474 end;
for i := 1 to m do begin maxstlb[i] := -21474; minstlb[i] := 21474 end;

for i := 1 to n do
for j := 1 to m do begin 
read(C[i,j]);
if C[i, j] > maxstr[i] then maxstr[i] := C[i, j];
if C[i, j] < minstr[i] then minstr[i] := C[i, j];
if C[i, j] > maxstlb[j] then maxstlb[j] := C[i, j];
if C[i, j] < minstlb[j] then minstlb[j] := C[i, j];
end;

for i := 1 to n do
for j := 1 to m do 
if (C[i, j] = maxstr[i]) and (C[i, j] = minstlb[j]) or(C[i, j] = minstr[i]) and (C[i, j] = maxstlb[j]) then writeln(i, ' ', j);

end.