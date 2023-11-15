program b919b;
const n=2; m=3;
var k, i, j, x, fl: integer; C: array [1..n, 1..m] of integer;
begin
  k:= 0;
  for i:=1 to n do 
    for j:=1 to m do begin 
      read(x);
      C[i][j]:= x;
    end;
  for i:=1 to n do
    for j:=1 to m do begin
      fl:= 1;
      x:= j + 1;
      while (fl = 1) and (x <= m) do begin
        if C[i][j] >= C[i][x] then fl:=0;
        x:= x + 1;
        end;
      x:= 1;
      if fl = 1 then while ((j - 1) >= x) and (fl = 1) do begin
        if C[i][j] <= C[i][x] then fl:=0;
        x:= x + 1;
        end;
      k:= k + fl;
  end;
  writeln(k)
end.