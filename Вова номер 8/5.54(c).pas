var i, j, n, s:integer;
p:boolean;
begin 
  read(n);
  if n<2 then exit;
  p:=true;
  for i:=2 to n do begin
    for j:=2 to i-1 do begin
      if i mod j=0 then begin
        p:=false;
        break;
      end;
    end;
  if p then writeln(i);
  p:=true;
  end;
end.