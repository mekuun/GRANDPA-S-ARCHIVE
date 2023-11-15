var 
a : char;
t : boolean;
s, l : integer;
begin
read(a); t:= True; s:= 0;
if a = '.' then t:= False;
while (a <> '.') and t do begin
  if (ord(a) < ord('0')) or (ord(a) > ord('9')) then t := False
  else begin
  l := ord(a) - 48;
  s := s + l;
  end;
  read(a);
end;
if t then if (l mod 2 <> 0) or (s mod 3 <> 0) then t := False;
writeln(t);
end.