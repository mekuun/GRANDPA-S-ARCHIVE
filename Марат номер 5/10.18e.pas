const n=50; m=40;
var i, f, j: integer; XX: string; ans: array[1..n*2] of string; k:array[1..n*2] of AnsiString; c, cp: char;
begin
  i:=1;
  c:='1';
  while (c <> '.') do begin
    read(c);
    XX:= '';
    while (c <> ' ') and (c <> '.') do begin
      if c <> ' ' then XX:= XX + c;
      cp:=c;
      read(c);
    end;
    k[i]:=XX;
    while pos(cp, XX) <> length(XX) do begin if pos(cp,XX) <> length(XX) then delete(XX, pos(cp,XX),1);
    end;
    ans[i]:=XX;
    i:=i + 1;
  end;
  f:= i - 1;
  for i:= 1 to f do if k[i] <> k[f] then writeln(ans[i]);
end.