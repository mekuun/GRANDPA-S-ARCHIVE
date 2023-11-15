const e=0.00000001;
function Power(XX,A:real):real;
var s, x, i:real;
begin
  s:=1; x:=1; i:=1;
  while e < abs(x) do begin
    x:=x * XX * (A - i + 1) / i;
    i:=i + 1;
    s:=s + x;
  end;
  Power:=s
end;
var s, t:real;
begin
  readln(t);
  s:=Power(-cos(t) * cos(t) * cos(t) * cos(t) /4, 1/4);
  writeln(s + Power(arctan(t)/2, 1/5) * Power(-(2 + t*t)/(3 + t*t), 1/9));
end.