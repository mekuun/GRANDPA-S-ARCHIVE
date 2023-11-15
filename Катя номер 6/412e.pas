var a, b, c: real;
begin
  read(a); read(b); read(c);
  if ((a + b) > c) and ((a + c) > b) and ((b + c) > a) then
  begin
    if (a = b) and (b = c) then write(3)
    else
    begin
      if (a = b) or (b = c) or (a = c) then write(2)
      else begin write(1); end;
    end;
  end
  else begin write(0) end;
end.