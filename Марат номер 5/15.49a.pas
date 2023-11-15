procedure Tabstoblanks(var F:text);
var x: char; F1:text; i:integer;
begin
  assign(F1,'ans.txt');
  reset(F);
  rewrite(F1);
  while not(eof(F)) do begin
    read(F,x);
    if ord(x)<>9 then write(F1,x) else for i:=1 to 8 do write(F1, ' ');
  end;
  close(F);
  close(F1);
  reset(F1); rewrite(F);
  while not(eof(F1)) do begin 
    read(F1, x); write(F, x);
  end;
  close(F); close(F1); erase(F1);
end;