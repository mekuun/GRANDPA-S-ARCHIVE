procedure Delete(var F:TString);
var p:char; F_n:TString;
i,k:integer;
begin
  reset(F); k:=filesize(F);
  if k < 2 then begin close(F); exit; end;
  i:=1; assign(F_n, '1.txt'); rewrite(F_n);
  while not eof(f) do 
    begin
    read(F,p);
    if i <> (k-1) then write(F_n, p);
    i:=i+1;
    end;
  F:=F_n;
  close(F_n); close(F);
end;