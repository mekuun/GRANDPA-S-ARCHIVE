function proiz(xx:integer):integer;
begin 
  if xx = 10 then proiz:=1 else
  if (xx div 10) = 0 then proiz:=abs((xx mod 10)) else
  if ((xx mod 10) = 0) and (xx <> 0) then proiz:=abs(proiz(xx div 10)) else
  if (xx mod 10) <> 0 then proiz:=abs(proiz(xx div 10) * (xx mod 10));
end;
function maks(x:integer; mx:integer):integer;
var xi: integer; pr: integer;
begin 
  read(xi);
  pr:=abs(proiz(xi));
  if xi=0 then maks:=mx else
    if proiz(mx) < pr then maks:=maks(xi, xi) else maks:=maks(xi, mx);
end;
var xv, prv: integer;
begin 
  read(xv);
  if xv <> 0 then writeln(maks(xv, xv)) else writeln(0)
end.