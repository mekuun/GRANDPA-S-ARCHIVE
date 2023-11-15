var m1, m2, m3, x, t: longint;

begin 
m1 :=  - 2147483648 ; m2 := - 2147483648; m3 := - 2147483648; x := 1; t := 0;
read(x);
while x <> 0 do begin
t := t + 1;
if x >= m1 then begin m3 := m2; m2 := m1; m1 := x end
else if x >= m2 then begin m3 := m2; m2 := x; end
else if x >= m3 then m3 := x;
read(x);
end;

if t < 3 then write(0)
else write (m1, ' ', m2, ' ', m3)

end.