program g641g;
var k, c: char; n: integer;
begin
  n:= 0;
  k:= 'L';
  read(c);
  if ((c = '0') or (c = '.')) then begin writeln(c <> '.'); exit; end;
  while (c <> '.') do begin
    if (ord(c) >= 48) and (ord(c) <= 57) then n:= n + (ord(c) - 48) * 16 
      else if (ord(c) >= 65) and (ord(c) <= 70) then n:= n + (ord(c) - 55) * 16 else begin writeln('false'); exit; end;
    k:= c;
    read(c);
  end;
  if (ord(k) >= 48) and (ord(k) <= 57) then n:= n - (ord(k) - 48) * 15 else n:= n - (ord(k) - 55) * 15;
  writeln(((n mod 5) = 0) and (n <> 0))
end.