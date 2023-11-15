procedure Lines(var f,g:text);
var c:char; i, n:integer;
begin
  n:=0;
  reset(f);
  rewrite(g);
  while not eof(f) do begin
    n:=n+1;
    write(g, chr((n div 1000)+48), chr(((n div 100) mod 10)+48), chr(((n div 10) mod 10)+48), chr((n mod 10)+48), ' ');
    while not eoln(f) do begin
      read(f, c);
      write(g, c);
    end;
    readln(f);
    writeln(g);
  end;
  close(f);
  close(g);
end;