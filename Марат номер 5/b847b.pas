program b847b;
var x, f: real; m: array [1..9] of 0..9; p: array [1..2] of 0..9; pr, i: integer;
begin
  pr:= 0;
  readln(x);
  if x < 0.1 then begin writeln('-1'); exit; end;
  while x >= 1 do begin x:= x / 10; pr:=pr + 1; end;
  for i:=1 to 9 do begin 
    m[i]:= trunc(x * 10);
    x:= x * 10 - trunc(x * 10);
  end;
  p[1]:= pr div 10;
  p[2]:= pr mod 10;
  for i:= 1 to 9 do write(m[i], ' ');
  for i:= 1 to 2 do write(p[i], ' ')
end.