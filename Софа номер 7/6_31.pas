var n, i, cur: longint;
    th, rank, modulo: longint;
begin
    read(n);
    if n<0 then begin writeln(-1); exit end else begin
        write(0, ' ');
        for i:=1 to n do begin
            cur:=i;
            th:=0; rank:=1;
            while cur > 0 do begin
                modulo := cur mod 3;
                cur := cur div 3;
                th := th + modulo * rank;
                rank := rank * 10;  
            end;
        write(th, ' ');
        end;
    end;
end.