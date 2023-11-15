var
a, k: integer;
s: char;
t: boolean;

begin
read(s);
t := True; k:= 1;
if (ord(s) > ord('0')) and (ord(s) <= ord('9')) then a:= ord(s) - 48
else t:= False;
read(s);
while t and (s <> '.') do begin
if k > a then t:= False;
if (ord(s) >= ord('0')) and (ord(s) <= ord('9')) then t:= False;
read(s);
k := k + 1; 
end;
if k <= a then t:= False; 
write(t);
end.