procedure Create_List(N:integer;var L:Tlist);
begin
    if N <= 0 then L:=nil
    else
    begin
        new(L);
        if N=1 then begin L^.Data:=1; L^.next:=nil; end
        else
        begin
            L^.Data:=N;
            Create_List(N-1,L^.next)
        end;
    end;
end;