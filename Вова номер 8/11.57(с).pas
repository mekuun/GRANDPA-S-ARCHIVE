Const N=15; type Tarray=array[1..N+1] of real;
function Horner(var A:Tarray; X:real):real;
var i:integer; s, p:real;
begin
  p:=1; s:=0;
  for i:=n+1 downto 1 do begin
    s:=s+A[i]*p;
    p:=p*X;
  end;
  Horner:=s;
end;

var p, q:Tarray;
a, k:real;
i:integer;
begin
  for i:=1 to N+1 do read(p[i]);
  for i:=1 to N+1 do read(q[i]);
  read(a);
  k:=a+Horner(q, a)*Horner(p, a+1);
  writeln(Horner(p, k));
end.