const n=20;
var x, y:array[1..n] of real;
i, j, p, k: integer;
s: real;
begin
  s:=-1;
  for i:=1 to n do begin
    read(x[i]);
    read(y[i]);
  end;
  for i:=1 to n-1 do
    for j:=i+1 to n do
      if s<sqrt((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j])) then begin
        s:=sqrt((x[i]-x[j])*(x[i]-x[j])+(y[i]-y[j])*(y[i]-y[j]));
        p:=i;
        k:=j;
      end;
  writeln(p, ' ', k);
end.