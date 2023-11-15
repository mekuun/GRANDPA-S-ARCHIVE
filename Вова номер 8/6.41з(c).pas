var k, n, m:integer;
s:char;
b:boolean;
begin
  read(s);
  k:=0;
  b:=true;
  while s<>'.' do begin
    if s<>chr(48+k) then begin
      b:=false;
      break;
    end;
    k:=k+1;
    if k=11 then begin
      b:=false;
      break;
    end;
    read(s);
  end;
  if k=0 then b:=false;
  writeln(b);
end.