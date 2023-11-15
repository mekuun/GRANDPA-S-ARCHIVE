const n=3; const m=4;
var a:array[1..n,1..m] of integer;
b:array[1..n] of boolean;
i, j: integer;
begin
  for i:=1 to n do for j:=1 to m do read(a[i,j]);
  for i:=1 to n do begin
    b[i]:=true;
    for j:=1 to (m div 2) do if a[i,j]<>a[i,m-j+1] then begin
      b[i]:=false;
      break;
    end;
  end;
  for i:=1 to n do write(b[i], ' ');
end.