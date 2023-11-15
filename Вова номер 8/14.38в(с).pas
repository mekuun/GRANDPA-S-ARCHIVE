const s=['b', 'd', 'g', 'j', 'l', 'm', 'n', 'r', 'v', 'w', 'y', 'z'];
st='bdgjlmnrvwyz';
var k:set of 'a'..'z';
i:integer;
c:char;
b:boolean;
begin
  read(c);
  if not(c in ['a'..'z']) then begin
    writeln('Error');
    exit;
  end;
  k:=[];
  b:=false;
  while c<>'.' do begin
    if c=',' then begin
      if b then b:=false else begin
        writeln('Error');
        exit;
      end;
    end else begin
      if not(c in ['a'..'z']) then begin
        writeln('Error');
        exit;
      end;
      b:=true;
      if (c in s) and not(c in k) then k:=k+[c];
    end;
    read(c);
    if (c='.') and not(b) then begin
      writeln('Error');
      exit;
    end;
  end;
  for i:=1 to 12 do if st[i] in k then write(st[i], ' ');
end.