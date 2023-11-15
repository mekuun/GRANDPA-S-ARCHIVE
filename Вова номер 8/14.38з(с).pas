const s='aeiou';
var a:set of 'a'..'z';
b:array[1..5] of integer;
i:integer;
c:char;
begin
  read(c);
  if not(c in ['a'..'z']) then begin
    writeln('Error');
    exit;
  end;
  a:=[];
  for i:=1 to 5 do b[i]:=0;
  while c<>'.' do begin
    if c=',' then begin
      if a=[] then begin
        writeln('Error');
        exit;
      end;
      for i:=1 to 5 do if not(s[i] in a) then b[i]:=b[i]+1;
      a:=[];
    end else begin
      if not(c in ['a'..'z']) then begin
        writeln('Error');
        exit;
      end;
      a:=a+[c];
    end;
    read(c);
    if c='.' then begin
      if a=[] then begin
        writeln('Error');
        exit;
      end;
      for i:=1 to 5 do if not(s[i] in a) then b[i]:=b[i]+1;
    end;
  end;
  for i:=1 to 5 do if b[i]>1 then write(s[i]);
end.