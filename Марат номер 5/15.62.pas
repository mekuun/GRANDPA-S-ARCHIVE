var x: char; F:text; sm, n, ni:integer;
begin
  assign(F,'1.txt');
  reset(F);
  n:=0;
  sm:=0;
  while not eof(F) do begin
    ni:=0;
    while not eoln(F) do begin 
      read(F,x);
      if x in ['a'..'z'] + ['A'..'Z'] then ni:=ni + 1 else
        if ni<>0 then begin 
          n:=n + 1;
          sm:=sm + ni;
          ni:=0;
      end;
    end;
    if ni<>0 then begin 
          n:=n + 1;
          sm:=sm + ni;
          ni:=0;
    end;
    readln(F)
  end;
  close(F);
  if sm=0 then writeln(0) else writeln(sm / n);
end.