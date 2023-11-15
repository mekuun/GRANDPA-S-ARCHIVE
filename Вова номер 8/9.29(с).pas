const n=7;
var a:array[1..n,1..n] of real;
k, p, m: real;
i, j, x, y: integer;
begin
  for i:=1 to n do for j:=1 to n do read(a[i,j]);
  k:=a[1,1]; x:=1;
  p:=a[1,1]; y:=1;
  for i:=1 to n do for j:=1 to n do begin
    if a[i,j]>k then begin
      k:=a[i,j];
      x:=i;
    end;
    if a[i,j]<p then begin
      p:=a[i,j];
      y:=j;
    end;
  end;
  m:=0;
  for i:=1 to n do m:=m+a[x,i]*a[i,y];
  writeln(m);
end.