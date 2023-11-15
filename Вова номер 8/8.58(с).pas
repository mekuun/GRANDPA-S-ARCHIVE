var a:array[0..255] of boolean;
i, n: integer;
s: char;
b: boolean;
begin
  for i:=0 to 255 do a[i]:=false;
  read(s);
  n:=0;
  while s<>'.' do begin
    if not(a[ord(s)]) then begin
      a[ord(s)]:=true;
      n:=n+1;
    end;
    read(s);
  end;
  writeln(n);
end.