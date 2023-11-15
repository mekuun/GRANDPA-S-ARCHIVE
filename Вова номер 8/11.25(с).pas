const n=50; type Tarray=array[1..N] of real;
function Min(var X:Tarray):real;
var i:integer; m:real;
begin
  m:=X[1];
  for i:=2 to n do if X[i]<m then m:=X[i];
  Min:=m;
end;

function Max(var X:Tarray):real;
var i:integer; m:real;
begin
  m:=X[1];
  for i:=2 to n do if X[i]>m then m:=X[i];
  Max:=m;
end;

var a, b, c, bc:Tarray;
i:integer;
begin
  for i:=1 to n do read(a[i]);
  for i:=1 to n do read(b[i]);
  for i:=1 to n do begin
    read(c[i]);
    bc[i]:=b[i]+c[i];
  end;
  if (Max(a)<>0) and (Min(bc)<>0) then
    if Min(a)<Max(b) then writeln(Min(b)/Max(a)+Max(c)/Min(bc))
    else writeln(Max(bc)+Min(c))
  else writeln('Error');
end.