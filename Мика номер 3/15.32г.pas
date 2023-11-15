procedure Replace(var F:TString; C:char);
var x, m:char; F1:TString;
begin
assign(F1,'one.txt');
reset(F);rewrite(F1);
if eof(F) then begin close(F); exit end;
read(F, x);
m := x;
while not eof(F) do
    begin
    read(F, x);
    write(F1, m);
    m := x;
    end;
write(F1, C);
F:=F1; close(F1);close(F);end;