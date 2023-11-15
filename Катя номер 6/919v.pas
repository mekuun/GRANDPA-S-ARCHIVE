const n=6; m=3;
var
a: array[1..n] of array[1..m] of integer;
i, j, x, k: integer;

begin
for i:=1 to n do
for j:=1 to m do begin read(x); a[i,j] := x end;
k := 0;
for i:= 1 to n do
for j := 1 to m do 
begin
if (i = 1) and (j = 1) then begin if (a[i, j] < a[i+1, j]) and (a[i, j] < a[i, j+1]) then k:= k + 1 end
else
if (i = n) and (j = m) then begin if (a[i, j] < a[i-1, j]) and (a[i, j] < a[i, j-1]) then k:= k + 1 end
else
if (i = 1) and (j = m) then begin if (a[i, j] < a[i+1, j]) and (a[i, j] < a[i, j-1]) then k:= k + 1 end
else
if (i = n) and (j = 1) then begin if (a[i, j] < a[i-1, j]) and (a[i, j] < a[i, j+1]) then k:= k + 1 end
else
if i = 1 then begin if (a[i,j] < a[i, j + 1]) and (a[i, j] < a[i+1, j]) and (a[i,j] < a[i,j-1]) then k:= k + 1 end
else
if j = 1 then begin if (a[i,j] < a[i, j + 1]) and (a[i, j] < a[i+1, j]) and (a[i,j] < a[i-1,j]) then k:= k + 1 end
else
if j = m then begin if (a[i,j] < a[i, j - 1]) and (a[i, j] < a[i+1, j]) and (a[i,j] < a[i-1,j]) then k:= k + 1 end
else
if i = n then begin if (a[i,j] < a[i, j + 1]) and (a[i, j] < a[i-1, j]) and (a[i,j] < a[i,j-1]) then k:= k + 1 end
else
if (a[i, j] < a[i-1,j]) and (a[i,j] < a[i,j-1]) and (a[i,j] < a[i+1,j]) and (a[i,j] < a[i, j+1]) then k:= k + 1  
end;
write(k);
end.