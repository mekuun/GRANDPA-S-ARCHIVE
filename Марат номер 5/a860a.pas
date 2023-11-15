program a860a;
var i, j, f, a, s : word; g: array[0..27] of integer;
begin
  for i:= 0 to 27 do g[i]:= 0;
  for i:= 0 to 9 do for j:= 0 to 9 do for f:=0 to 9 do g[i + f + j]:= g[i + f + j] + 1; s:= 0;
  for i:= 0 to 27 do s:= s + g[i] * g[i];
  writeln(s);
end.