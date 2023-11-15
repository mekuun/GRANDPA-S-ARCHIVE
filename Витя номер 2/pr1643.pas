procedure Add_Last(L:Tlist;E:real);
var p,l1:Tlist;
begin
    L1:=l;
    while L^.next<>nil do
        l:=l^.next;
    new(p);
    p^.data:=e;
    p^.prev:=l;
    p^.next:=nil;
    if l<>nil then l^.next:=p;
    l:=p;
    if L1 = nil then l1:=l;
end;