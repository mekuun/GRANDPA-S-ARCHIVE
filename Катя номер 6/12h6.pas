function ch(a:integer): integer;
begin
  a := abs(a);
  if a < 10 then begin ch:= 1; exit; end;
  if (a mod 10 mod 2) <> (a div 10 mod 10 mod 2) then ch:= 1*ch(a div 10)
  else begin ch:=0; exit; end;
end;

function k():integer;
var a:integer;
begin
  read(a);
  if a = 0 then k:=0
  else k := k() + ch(a);
end;
  
begin
  write(k);
end.