Const N=3;
type Tmatrix=array[1..N,1..N] of integer;
function Equal(var A,B:Tmatrix):Boolean;
var i, j:integer;
begin 
  for i:=1 to N do for j:=1 to N do if A[i][j] <> B[i][j] then begin Equal:=false; exit; end;
  Equal:=true;
end;
var A, B: Tmatrix; i, j, per, vtr, tre, cht:integer;
begin
  for i:=1 to N do for j:=1 to N do read(A[i][j]);
  for i:=1 to N do for j:=1 to N do read(B[i][j]);
  vtr:=0; tre:=0; cht:=0;
  for i:=1 to N do for j:=1 to N do begin 
    if A[i][j] = B[j][i] then vtr:=vtr + 1;
    if A[i][j] = B[N-i+1][N-j+1] then tre:=tre + 1;
    if A[i][j] = B[N-j+1][N-i+1] then cht:=cht + 1;
  end;
  i:=N*N;
  writeln(Equal(A, B) or (vtr=i) or (tre=i) or (cht=i))
end.