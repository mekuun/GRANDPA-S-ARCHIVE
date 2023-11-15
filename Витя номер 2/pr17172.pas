procedure Delete_Minimal(var T:Ttree);
var p:Ttree;
begin
    if (T^.left<>nil) then Delete_Minimal(T^.left)
    else
    if (T^.left=nil) and (T^.right<>nil) then
    begin
        new(p);
        p^.data:=T^.data;
        p:=T;
        T:=T^.right;
        dispose(p);exit;
    end
    else
    if (T^.left=nil) and (T^.right=nil) then
    begin
        T:=nil;dispose(T);exit;
    end;
end;