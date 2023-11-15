var k: integer; cur: char;
begin
    read(cur);
    k:=1;
    if (cur>='0') and (cur<='9') then begin writeln(false); exit; end;
    while (cur<>'.') and not((cur>='0') and (cur<='9')) do begin
        read(cur);
        k:=k+1;
        if (ord(cur)-48=k-1) and (cur>='0') and (cur<='9') then begin
                read(cur);
                if cur='.' then writeln(true) else writeln(false);
                exit;
            end;
        end;
    writeln(false);
end.
