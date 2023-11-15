var
  a, b, c, d, i, x: integer;
  ans: boolean;
label 1;
begin
  read(a); read(b); read(c); read(d);
  ans := True;
  if (a = 0) or (d = 0) then
  begin
    ans := False;
    goto 1;
  end;
  for i:= 1 to round(sqrt(abs(d))) do
  begin
    if (d mod i) = 0 then
    begin
      x := i;
      if (a * x * x * x + b * x * x + c * x + d) = 0 then write(' ', x);
      x := -x;
      if (a * x * x * x + b * x * x + c * x + d) = 0 then write(' ', x);
      x := trunc(d / i);
      if ((a * x * x * x + b * x * x + c * x + d) = 0) and (x <> i) and (x <> -i) then write(' ', x);
      x := - x;
      if ((a * x * x * x + b * x * x + c * x + d) = 0) and (x <> i) and (x <> -i) then write(' ', x);
    end;
  end;
  1: if not ans then write('Error');
end.