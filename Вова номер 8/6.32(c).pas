var k, n, m:longint;
s:char;
begin
  m:=-1;
  readln(s);
  n:=ord(s)-48;
  while s<>'.' do begin
    readln(s);
    if (s<>' ') and (s<>'.') then begin
      k:=ord(s)-48;
      n:=7*n+k;
    end
    else if s<>'.' then begin
      readln(s);
      n:=ord(s)-48;
    end;
    if n>m then m:=n;
  end;
  writeln(m);
end.