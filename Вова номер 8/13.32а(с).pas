const m=0.0000001;
type complex=record re,im: real end;
var e, z:complex;
r, i, v:real;
n:integer;
begin
  read(r, i);
  z.re:=r; z.im:=i;
  e.re:=1; e.im:=0;
  n:=1;
  while (z.re*z.re+z.im*z.im)>=(m*m) do begin
    e.re:=e.re+z.re; e.im:=e.im+z.im;
    n:=n+1;
    v:=z.re;
    z.re:=(v*r-z.im*i)/n; z.im:=(v*i+z.im*r)/n;
  end;
  writeln(e.re, ' ', e.im);
end.