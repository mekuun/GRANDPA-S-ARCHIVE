const n = 8;
type TArray = array[1..n] of integer;
function scal(var x, y: TArray; i, j: integer): integer;
var k, s: integer;
begin
    s:=0;
    for k:=i to j do
       s:=s+x[k]*y[k];
    scal:=s;
end;
var i: integer; x, y: TArray;
begin
    for i:=1 to n do read(x[i]);
    for i:=1 to n do read(y[i]);
    if scal(x, y, 1, 3*n div 4)>0 then writeln(scal(x, x, 1, n)) else writeln(scal(y, y, n div 2, n));
end.
