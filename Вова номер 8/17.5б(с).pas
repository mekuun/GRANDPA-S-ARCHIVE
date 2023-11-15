procedure Output_pos(var F: Tfc);
var c: char;
    x: integer;
begin
  setemptys(S);
  reset(F);
  while not(eof(F)) do begin
    read(F,c);
    if c = '(' then pushs(S,filepos(F));
    if c = ')' then begin
      pops(S,x);
      write('(', x, ' ', filepos(F), ') ');
    end;
  end;
  close(F);
end;