Const N=10; 
type TMatrix=array[1..N,1..N] of real;
function Trace(var A:Tmatrix):real;
var f: integer; s: real;
begin
  s:= 0;
  for f:=1 to N do s:=s + A[f][f];
  Trace:=s;
end;
var i, j, k:integer; b, c, ans:Tmatrix;
begin 
  for i:=1 to N do for j:=1 to N do read(b[i][j]);
  for i:=1 to N do for j:=1 to N do read(c[i][j]);
  if trace(c) < trace(b) then b:=c;
  for i:=1 to N do begin
    for j:=1 to N do begin
      ans[i][j]:= 0;
      for k:=1 to N do ans[i][j]:= b[i][k] * b[k][j] + ans[i][j];
    end;
  end;
  for i:=1 to N do begin for j:=1 to N do write(ans[i][j], ' '); writeln(); end;
end.