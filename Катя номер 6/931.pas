const
  n = 4;

var
  a: array[1..n] of array[1..n] of integer;
  i, j, x, s_b, s_n: integer;
  t: boolean;

label f;

begin
  t := True;
  for i := 1 to n do
  begin
    s_n := 0;
    for j := 1 to n do
    begin
      read(x);
      a[i, j] := x;
      s_n := s_n + x;
    end;
    if i <> 1 then if s_n <> s_b then begin t := False; goto f end;
    if i = 1 then s_b := s_n;
  end;
  for i:=1 to n do begin
  s_n := 0;
  for j:=1 to n do s_n := s_n + a[j, i];
  if s_n <> s_b then begin t := False; goto f end
  end;
  f: write(t);
end.