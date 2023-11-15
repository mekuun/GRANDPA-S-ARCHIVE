procedure Delete (var F:TString);
var x: char; F1, F2:TString;
begin
  assign(F1,'ans.txt');
  reset(F);
  rewrite(F1);
  while not eof(F) do begin
    read(F,x);
    if (x<>'+') and (x<>'-') then write(F1,x);
  end;
  F2:=F;
  F:=F1;
  close(F1);
  close(F);
  erase(F2);
end;