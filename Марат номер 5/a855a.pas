program a855a;
const n = 7; 
var i, j, s: integer; a: array [1..n] of integer; 
begin
  for i:= 1 to n do begin
    a[i]:= 0;
    read(s);
    a[i]:= s;
    end;
  s:= 0;
  for i:= 1 to n - 1 do begin
    for j:= i + 1 to n do begin 
      if a[i] > a[j] then s:= s + 1;
     end;
  end;
  writeln(s);
end.