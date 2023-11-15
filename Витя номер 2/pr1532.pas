
procedure Double(var F:TString);
var x: char; F1:TString;
begin
assign(F1,'one.txt');
reset(F);rewrite(F1);
while not eof(F) do
 begin
 read(F,x);
 if (ord(x)<=57) and (ord(x)>=48) then 
    begin write(F1,x);write(F1,x);end
 else write(F1,x);
end;F:=F1; close(F1);close(F);end;