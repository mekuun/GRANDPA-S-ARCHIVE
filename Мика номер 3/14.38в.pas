var list, allchar, print: set of char; a, i:char; emptyword:boolean;

begin
emptyword := true;
read(a);
list := ['b', 'd', 'g', 'j', 'l', 'm', 'n', 'r', 'v', 'w', 'y', 'z'];
allchar := ['a'..'z'] + ['.', ','];
print := [];
if a = '.' then begin write('Error'); exit end;
while a <> '.' do begin
if (emptyword and (a = ',')) or (not (a in allchar)) then begin write('Error'); exit end;
if a <> ',' then emptyword := false else emptyword := true;
if (a <> ',') and (a in list) then print := print + [a]; 
read(a)
end;
if emptyword then begin write('Error'); exit end;

list := list * print;
for i := 'a' to 'z' do if i in list then write(i)

end.