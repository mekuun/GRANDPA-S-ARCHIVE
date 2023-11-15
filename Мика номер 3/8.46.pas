const n = 8;
type cifra=0..9;
Mas=array[1..n] of cifra;
var A, B, C:mas;i, k:integer; x:boolean;

begin
x := True;
k := 0;
for i:=1 to n do read(A[i]);
for i:=1 to n do read(B[i]);
for i := n downto 1 do begin 
C[i] := (A[i] + B[i] + k) mod 10 ;
if ((A[i] + B[i]) + k >= 10) then if (i <> 1) then k := 1  else  x := False else  k := 0; 
end;

if x then write('correct', ' ')
else write ('overflow', ' ');
for i:=1 to n do write(C[i], ' ');





end.