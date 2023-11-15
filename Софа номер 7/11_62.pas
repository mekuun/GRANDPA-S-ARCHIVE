const n = 2; m = 2;
type Tmatrix = array[1..n,1..m] of real;
function norm(var X:Tmatrix): real;
var i, j: integer; maxch: real;
begin
    norm := 0;
    for i := 1 to n do begin
        maxch := 0;
        for j := 1 to m do begin 
            if abs(X[i][j]) > maxch then maxch:=abs(X[i][j]);
        end;
        norm := norm + maxch;
    end;
end;

var A, B, C, ABC: Tmatrix; i, j: integer;

begin

for i := 1 to n do
    for j := 1 to m do read(A[i][j]);
for i := 1 to n do
    for j := 1 to m do read(B[i][j]);
for i := 1 to n do
    for j := 1 to m do read(C[i][j]);

for i := 1 to n do
    for j := 1 to m do ABC[i][j] := A[i][j] + B[i][j] + C[i][j];

if norm(ABC)=0 then write('Error')
    else write((norm(A) + norm(B) + norm(C))/norm(ABC))

end.