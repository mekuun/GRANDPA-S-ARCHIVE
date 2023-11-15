var f1, f2:text;
b:boolean;
c:char;
begin
  assign(f1, '1.txt');
  assign(f2, '2.txt');
  reset(f1);
  rewrite(f2);
  b:=true;
  while not eof(f1) do begin
    while not eoln(f1) do begin
      read(f1, c);
      write(f2, c);
      if (ord(c) = 39) then b:=not b;
      if (c='{') and b then begin
        while c<>'}' do read(f1, c);
        write(f2, c);
      end;
    end;
    readln(f1);
    writeln(f2);
  end;
  close(f1);
  close(f2);
end.