type mnoj=set of 'a'..'z';
var c: char; sg, sg1, sg2, x: mnoj; i:integer;
begin
  sg:=['a'..'z'] - ['a', 'e', 'i', 'o', 'u'];
  sg2:=[]; sg1:=[];
  read(c);
  if not(c in ['a'..'z']) then begin writeln('Error'); exit; end;
  while (c <> '.') do begin
    x:=[];
    i:=0;
    while (c <> '.') and (c <> ',') do begin 
      if (c in sg) and not(c in x) then begin 
        if not(c in sg1) then sg1:=sg1 + [c] else sg2:=sg2 + [c];
        x:=x + [c];
      end;
      i:=1;
      read(c);
      if not(c in ['a'..'z']) and (c<>'.') and (c<>',') then begin writeln('Error'); exit; end;
    end;
    if i=0 then begin writeln('Error'); exit; end;
    if c<>'.' then begin
      read(c);
      if not(c in ['a'..'z']) and (c<>',') then begin writeln('Error'); exit; end; 
    end;
  end;
  for i:=97 to 122 do if chr(i) in (sg1 - sg2) then write(chr(i))
end.