const n=7;
var
k, i: integer;
a, minimum, maximum, k_min, k_max, summary: longint;
num: array[1..n] of longint;
begin
k :=  0; k_min := 0; k_max := 0;
while k <> n do
begin
read(a);
if k = 0 then begin maximum := a; minimum := a end
else begin if a > maximum then begin maximum := a; k_max := k end;
if a < minimum then begin minimum := a; k_min := k end
end;
k := k + 1;
num[k] := a;
end;
if k_min > k_max then begin
k_min := k_min + k_max;
k_max := k_min - k_max;
k_min := k_min - k_max;
end;
for i := k_min to k_max do
begin
summary := summary + num[i + 1];
end;
write(summary);
end.