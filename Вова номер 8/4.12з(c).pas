var i, k, n, s:integer;
label 1;
begin
  read(k);
  if (k<1) or (k>180) then begin
    writeln('Error');
    exit;
  end;
  if k mod 2=1 then s:=((k-1) div 20)+1 else s:=(((k-2) div 2) mod 10);
  writeln(s);
end.