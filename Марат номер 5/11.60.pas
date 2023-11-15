Const n=10 ; m=10;
type Tmatrix=array[1..n,1..m] of real;
function Zerorows(var A:tmatrix):integer;
var i, j, fl, c: integer;
begin 
  c:= 0; 
  for i:=1 to n do begin 
    fl:=0;
    j:=1;
    while (j <= m) and (fl=0) do begin 
      if A[i, j] <> 0 then fl:=1;
      j:=j + 1;
    end;
    if fl=0 then c:=c+1; 
  end;
  Zerorows:=c;
end;
var x, y, z: Tmatrix; i, j, zx, zy, zz, mx: integer;
begin 
	for i:=1 to n do for j:=1 to m do read(x[i,j]);
	for i:=1 to n do for j:=1 to m do read(y[i,j]);
	for i:=1 to n do for j:=1 to m do read(z[i,j]);
	zx:=Zerorows(x); 
	zy:=Zerorows(y); 
	zz:=Zerorows(z);
	if (zx >= zy) and (zx >= zz) then mx:=zx;
	if (zy >= zx) and (zy >= zz) then mx:=zy;
	if (zz >= zy) and (zz >= zx) then mx:=zz;
	if zx=mx then for i:=1 to n do for j:=1 to m do writeln(x[i,j]:5:0);
	if zy=mx then for i:=1 to n do for j:=1 to m do writeln(y[i,j]:5:0);
	if zz=mx then for i:=1 to n do for j:=1 to m do writeln(z[i,j]:5:0);
end.