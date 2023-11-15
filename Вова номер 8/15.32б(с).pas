procedure Addc(var f:TString; c:char);
var k:char;
begin
  reset(f);
  while not eof(f) do read(f, k);
  write(f, c);
  close(f);
end;