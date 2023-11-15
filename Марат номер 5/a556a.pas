program a548a;
var i,j,m,n,k:integer;
begin
readln(n);
if n > 2 then begin
  for i:=2 to n - 1 do
    if n mod i=0 then begin
      k:=0;
      j:=2;
      while (j < trunc(sqrt(i)) + 1) and (k = 0) do begin
        if i mod j=0 then k:= k +1;
        j:= j + 1
      end;
      if k=0 then writeln(i);
    end;
  end
end.