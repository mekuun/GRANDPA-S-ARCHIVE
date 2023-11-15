program a633a;
var i: integer; k, a, s, p: int64; x: char;
begin
  a:= 0; read(x);
  while not(x = ' ') do begin
   a:= a * 8 - ord('0') + ord(x);
   read(x);
  end;
  s:= a; a:= 0; p:= 0; k:= 1;
  while s > 0 do begin
    p:= s - 5 * (s div 5);
    a:= a + p * k;
    s:= s div 5;
    k:= k * 10;
    end;
  writeln(a);
end.
