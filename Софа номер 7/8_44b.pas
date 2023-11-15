const n = 4;
var s1, s2: array[1..n] of integer; i, j: integer; flag: boolean; cur: char;
begin
    //заполнение массивов
    for i:=1 to n do begin
        read(cur);
        s1[i]:=ord(cur);
    end;
    for i:=1 to n do begin
        read(cur);
        s2[i]:=ord(cur);
    end;
    
    flag:=true;
    //проверка равенства строк
    for i:=1 to n do begin
        if not(s1[i]=s2[i]) then begin flag:=false; break; end;
    end;
    
    if flag then begin writeln(false); exit; end;
    
    //проверка анаграмм
    for i:=1 to n do begin
        flag:=false;
        for j:=1 to n do begin
            if s1[i]=s2[j] then begin flag:=true; s2[j]:=-1; break; end;
        end;
        if not(flag) then begin writeln(flag); exit; end;
    end;
    writeln(true);
end.