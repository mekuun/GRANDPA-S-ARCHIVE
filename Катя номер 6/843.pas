var i, k, j: integer;
x: longint;
a: array[0..9] of integer;

begin
read(x);
i := 0; k := 0;
if x = 0 then write(0);
while x <> 0 do begin
a[i] := x mod 10;
x := x div 10;
k := k + 1;
i := i + 1;
end;
for i := k downto 2 do begin
for j := 0 to i-1 do
if a[j] < a[j + 1] then begin
a[j] := a[j] + a[j + 1];
a[j + 1] := a[j] - a[j +1];
a[j] := a[j] - a[j + 1];
end;
end;
for i:= 0 to k-1 do write(a[i])
end.