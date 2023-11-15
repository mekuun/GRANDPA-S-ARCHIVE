Const n = 5; m = 5;
type Tmatrix=array[1..n,1..m] of real;
function Norm(var X:Tmatrix):real;
var i, j:integer; maxch:real;
begin
Norm := 0;
for i := 1 to n do begin
maxch := 0;
for j := 1 to m do begin 
if X[i][j] < 0 then X[i][j] := -X[i][j];
if X[i][j] > maxch then maxch := X[i][j]
end;
Norm := Norm + maxch
end;
end;

var A, B, C, ABC:Tmatrix; i, j:integer;

begin
for i := 1 to n do
for j := 1 to m do read(A[i][j]);

for i := 1 to n do
for j := 1 to m do read(B[i][j]);

for i := 1 to n do
for j := 1 to m do read(C[i][j]);

for i := 1 to n do
for j := 1 to m do ABC[i][j] := A[i][j] + B[i][j] + C[i][j];

if norm(abc) = 0 then write('Error')
else write((norm(a) + norm(b) + norm(c))/norm(abc))

end.