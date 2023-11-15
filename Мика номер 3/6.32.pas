var x, m1, n : longint ; k : char; 

begin
x := 0;
m1 := 0;

repeat
read(k);
if k = '.' then break;
if k = ' ' then x := 0
else x := x * 7 + (ord(k) - 48); 

if m1 < x then m1 := x;
until False;

write(m1)

end.