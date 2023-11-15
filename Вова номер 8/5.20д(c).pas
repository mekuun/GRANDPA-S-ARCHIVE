const eps:real=0.000001;
var x, y, s:real;
n:integer;
begin
  read(x);
  if abs(x)>=1 then begin
    writeln('Error');
    exit;
  end;
  y:=x;
  s:=x;
  n:=1;
  repeat
    s:=(-1)*s*x*x*(2*n-1)/(2*n+1);
    y:=y+s;
    n:=n+1;
  until abs(s)<eps;
  writeln(y);
end.
