type mnoj=set of 'a'..'z'; m=array['a'..'z'] of integer;
var c: char; sg, x: mnoj; i, fl:integer; mn: m;
begin
  sg:=['c', 'f', 'h', 'k', 'p', 'q', 's', 't', 'x'];
  x:=[];
  read(c);
  fl:=0;
  for i:=97 to 122 do mn[chr(i)]:=0;
  if not(c in ['a'..'z']) then begin writeln('Error'); exit; end;
  while (c <> '.') do begin
    i:=0;
    fl:=fl + 1;
    x:=[];
    while (c <> '.') and (c <> ',') do begin
      x:=x+[c]; 
      i:=1;
      read(c); if not(c in ['a'..'z']) and (c<>'.') and (c<>',') then begin writeln('Error'); exit; end;
    end;
    if i=0 then begin writeln('Error'); exit; end;
    for i:=97 to 122 do begin
      if chr(i) in (sg - x) then mn[chr(i)]:=mn[chr(i)] + 1;
    end;
    if c<>'.' then begin read(c); if not(c in ['a'..'z']) and (c<>',') then begin writeln('Error'); exit; end; end;
  end;
  for i:=97 to 122 do if (mn[chr(i)]=1) and (chr(i) in sg) then write(chr(i))
end.