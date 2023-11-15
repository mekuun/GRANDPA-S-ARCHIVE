program d1017d;
const n=50; m=40;
var i, f, j, fl: integer; x: string; ans: array[1..n] of string; c: char;
begin
  i:=1;
  c:='1';
  while (i <= n) and (c <> '.') do begin
    read(c);
    x:= '';
    f:= 1;
    while (f <= m) and (c <> ' ') and (c <> '.') do begin
      x:=x + c;
      f:=f + 1;
      read(c);
    end;
    ans[i]:=x;
    i:=i + 1;
  end;
  f:= i - 1;
  x:= ans[f];
  for i:= 1 to f do begin
    fl:=1;
    for j:=2 to length(ans[i]) do begin 
      if not((ord(ans[i][j]) - 1 = ord(ans[i][j - 1])) and (ord(ans[i][j - 1]) >= 97)) then fl:=0;
    end;
    if (fl=1) and (x <> ans[i]) and (ans[i][length(ans[i])] = 'z') then writeln(ans[i]);
    end;
end.