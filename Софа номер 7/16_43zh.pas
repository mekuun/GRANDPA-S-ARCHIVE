procedure add_first(l:Tlist; e:real);
var l1:Tlist;
begin
    new(l1);
    if l^.next=nil then begin
        l^.prev:=l1; l^.next:=l1;
        l1^.next:=nil; l1^.prev:=nil;
        l1^.data:=e; exit;
    end;
    l1^.next:=l^.next; l^.next:=l1; l1^.prev:=nil; l1^.data:=e; l1^.next^.prev:=l1;
end;
