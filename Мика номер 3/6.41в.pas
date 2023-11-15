var x : integer ; a, c : boolean; k : char; 

begin
x := 0;
a := false;
repeat
read(k);
if k = '.' then break;
if (ord(k) > 57) or (ord(k) < 48) then begin a:= false; break end
else x := (x + (ord(k) - 48) mod 3) mod 3;
c:= ((ord(k)) mod 2 = 0);
a := true
until False;
write((x mod 3 = 0) and a and c)

end.