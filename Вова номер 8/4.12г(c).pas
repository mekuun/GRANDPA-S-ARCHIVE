var a, b, r, d, x1, x2:real;
begin
  read(a, b, r);
  if r<=0 then begin
    writeln(-1);
    exit;
  end;
  d:=r*r*(a*a+1)-b*b;
  x1:=(-1)*a*b/(a*a+1);
  if d<0 then writeln(0)
  else if d=0 then writeln(x1:10:10, ' ', (a*x1+b):10:10)
    else begin
      x1:=((-1)*a*b+sqrt(d))/(a*a+1);
      x2:=((-1)*a*b-sqrt(d))/(a*a+1);
      writeln(x1:10:10, ' ', (a*x1+b):10:10);
      writeln(x2:10:10, ' ', (a*x2+b):10:10);
    end;
end.