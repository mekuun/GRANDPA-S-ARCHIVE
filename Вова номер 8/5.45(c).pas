label 1;
var a, b, c, n:longint;
begin
  read(a);
  if a=0 then begin
    writeln(0);
    exit;
  end;
  read(b);
  if b=0 then begin
    writeln(0);
    exit;
  end;
  read(c);
  if c=0 then begin
    writeln(0);
    exit;
  end;
  if b>a then begin
    n:=a; a:=b; b:=n;
  end;
  if c>a then begin
    n:=a; a:=c; c:=n;
  end;
  if c>b then begin
    n:=b; b:=c; c:=n;
  end;
  read(n);
  while n<>0 do begin
    if n>c then begin
      if n>b then begin
        if n>a then begin
          c:=b; b:=a; a:=n; goto 1; end;
        c:=b; b:=n; goto 1; end;
      c:=n; goto 1; end;
    1: read(n);
    end;
  writeln(a, ' ', b, ' ', c);
end.