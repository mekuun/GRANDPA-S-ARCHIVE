function Ttype(a,b,c:real):integer;
begin 
if (a >= b + c) or (b >= a + c) or (c >= b + a) or (a + b + c = 0) then Ttype := -1

else if (a > b) and (a > c) then begin
if (a * a) < (b * b) + (c * c) then Ttype := 1;
if (a * a) = (b * b) + (c * c) then Ttype := 2;
if (a * a) > (b * b) + (c * c) then Ttype := 3
end

else if (b > a) and (b > c) then begin
if (b * b) < (a * a) + (c * c) then Ttype := 1;
if (b * b)  = (a * a) + (c * c) then Ttype := 2;
if (b * b) > (a * a) + (c * c) then Ttype := 3
end

else if (c > b) and (c > a) then begin
if (c * c) < (b * b) + (a * a) then Ttype := 1;
if (c * c) = (b * b) + (a * a) then Ttype := 2;
if (c * c) > (b * b) + (a * a) then Ttype := 3
end
end;

var a1, b1, c1, a2, b2, c2:real;

begin
read(a1, b1, c1, a2, b2, c2);
if (Ttype(a1, b1, c1) < 0) or (Ttype(a2, b2, c2) < 0) then write(-1)
else if (Ttype(a1, b1, c1) <> Ttype(a2, b2, c2)) then write(0)
else write(Ttype(a1, b1, c1))

end.