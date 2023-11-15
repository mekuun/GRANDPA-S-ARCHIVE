var
i: integer;
s: char;
a: array[0..25] of integer;

begin
read(s);
for i:= 0 to 25 do a[i] := 0;
while s <> '.' do
begin
if (ord(s) > 96) and (ord(s) < 123) then a[ord(s) - 97] := a[ord(s) - 97] + 1; 
read(s);
end;
for i:= 0 to 25 do if a[i] = 1 then write(chr(i + 97))
end.