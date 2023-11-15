var C: array [0..255] of boolean; i, k:integer; x:char;

begin

for i:= 0 to 255 do C[i] := False;

read(x);

while x <> '.' do begin if not(C[ord(x)]) then C[ord(x)] := True; read(x) end;

for i:= 0 to 255 do if C[i] then k := k + 1;

write(k)

end.
