Const N=10; type Tmatrix=array[1..N,1..N] of integer;
function Equal(var A,B:Tmatrix):Boolean;
var i, j:integer;
begin
  for i:=1 to N do for j:=1 to N do begin
    if A[i, j]<>B[i, j] then begin Equal:=false; exit; end;
  end;
  Equal:=true;
end;

var a, b, c, d, cd:Tmatrix;
i, j:integer;
begin
  for i:=1 to N do for j:=1 to N do read(a[i, j]);
  for i:=1 to N do for j:=1 to N do read(b[i, j]);
  for i:=1 to N do for j:=1 to N do c[i, j]:=b[j, i];
  for i:=1 to N do for j:=1 to N do d[i, j]:=b[N-j+1, N-i+1];
  for i:=1 to N do for j:=1 to N do cd[i, j]:=d[j, i];
  if Equal(a,b) or Equal(a,c) or Equal(a,d) or Equal(a,cd) then writeln(true)
  else writeln(false);
end.