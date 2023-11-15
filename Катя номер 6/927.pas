const
  n = 4;

var
  a: array[1..n] of array[1..n] of integer;
  t: boolean;
  i, j, x: integer;

begin
  t := True;
  for i := 1 to n do
    for j := 1 to n do
    begin
      read(x); a[i, j] := x;
    end;
  for i:= 1 to n do begin
    for j:= 1 to i do
     if i > j then if a[i,j] <> a[j,i] then begin t:=False; break; end;
    if not t then break;
  end;
  write(t);
end.