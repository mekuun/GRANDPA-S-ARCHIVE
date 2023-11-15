var C: array [97..122, 97..122] of integer; i, j, max:integer; x, y, st, a, b, fin: char;

begin
max := 0;
st := '-';

for i := 97 to 122 do 
for j := 97 to 122 do
C[i][j] := 0;

read(x);
y := ',';
while x <> '.' do begin
if y = ',' then st := x
else if x = ',' then begin fin := y; C[ord(st)][ord(fin)] := C[ord(st)][ord(fin)] + 1 end;
y := x;
read(x)
end;

fin := y;
C[ord(st)][ord(fin)] := C[ord(st)][ord(fin)] + 1;

if st = '-' then st := fin; 

for i := 97 to 122 do begin
for j := 97 to 122 do begin
if C[i][j] > max then begin max := C[i][j]; a := char(i); b := char(j) end; end;
end;

write(a, ' ', b)

end.