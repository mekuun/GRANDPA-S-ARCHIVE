Const N=2;
type Tmatrix=array[1..N,1..N] of real;
procedure Mult(var A,B,C:Tmatrix);
var i, j, k: integer;
begin
  for i:= 1 to n do
    for j:= 1 to n do
    begin
      C[i, j]:=0;
      for k:=1 to n do 
        C[i,j]:= C[i,j] + A[i,k] * B[k,j];
    end;
end;
function input():Tmatrix;
var i,j:integer;
begin
for i := 1 to n do
  for j:=1 to n do
    read(input[i,j]);
end;
var A, B, C, D, E: Tmatrix;
P, i, j: integer;
begin
  A:=input();B:=input();C:=input();read(P);
  if P<1 then begin write('Error'); exit;end;
  Mult(A,B,D); Mult(D,C,E); 
  D:=E;
  A:=E;
  for i:=2 to P do begin
    Mult(D, E, A);
    D:=A;
  end;
  for i:=1 to n do
    for j:= 1 to n do
      write(D[i,j]:11:7, ' ');
end.