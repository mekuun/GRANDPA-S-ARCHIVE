var
  n, i: integer;
  a, b, ap, bp: real;
  ans: boolean;
label 1;
begin
  ans := False;
  read(n);
  if n <= 0 then goto 1;
  read(ap); read(bp);
  if ap > bp then goto 1;
  for i := 2 to n do
  begin
    read(a); read(b);
    if a > b then goto 1; 
    if a > ap then ap := a;
    if b < bp then bp := b;
    if (b < ap) or (a > bp) then goto 1;
  end;
  ans := True;
  1: if ans then
    begin
      write(ans, ' ', ap, ' ', bp);
    end
    else begin write(ans) end;
end.