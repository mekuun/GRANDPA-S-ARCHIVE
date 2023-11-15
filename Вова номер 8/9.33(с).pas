const n=20;
var a:array[1..n,1..n+1] of real;
i, j: integer;
begin
  for i:=1 to n do for j:=i to n+1 do read(a[i,j]);
  for i:=n downto 2 do begin
    a[i,n+1]:=a[i,n+1]/a[i,i];
    for j:=1 to i-1 do begin
      a[j,n+1]:=a[j,n+1]-(a[i,n+1])*(a[j,i]);
    end;
  end;
  a[1,n+1]:=a[1,n+1]/a[1,1];
  for i:=1 to n do write(a[i,n+1]:10:5, ' ');
end.