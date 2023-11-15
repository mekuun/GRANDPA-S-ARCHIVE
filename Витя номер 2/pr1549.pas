procedure Blankstotabs(var F:text);
var x: char; F1:text; flag:boolean; i, j, k:integer;
begin
assign(F1,'one6.txt');
reset(F);rewrite(F1);
flag:=false;i:=0;
while not(eof(F)) do
begin
    read(f,x);
    if x=' ' then
        if flag then
            i:=i+1
        else
            begin
                i:=1; flag:=true;
            end;
    if i=8 then
    begin
        write(f1,chr(9));
        flag:=false;
        i:=0;
    end;
    if x<>' ' then
    begin
        if flag then
        begin
            flag:=false;
            for j:=1 to i do
                write(F1, ' ');
        end;
        i:=0;
        write(F1,x);

    end;

end;
close(f); 
close(f1);
reset(f1); rewrite(f);
while not(eof(f1)) do
    begin
        read(f1,x);
        write(f,x);
    end;
close(f);close(f1);erase(f1);
end;