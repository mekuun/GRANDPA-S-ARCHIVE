const eps = 0.0000001;
var x, s, k, m, i: real;
label l;

begin
read(x);
if abs(x) >= 1 then begin write('Error'); goto l; end;
k := 2;
s := x;
m := -1;
i := x;

while abs(x * i * (k - 1) / k) > eps do begin
x := x * i * (k - 1) / k;
s := s + m * x;
m := m * -1;
k := k + 1;
end;

write(s:10:10);

l:
end.
