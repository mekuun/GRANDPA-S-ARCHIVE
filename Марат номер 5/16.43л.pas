procedure DeleteFirst(L:Tlist);
var p:Tlist;
begin
  p:=L^.next;
  if p = nil then begin
    L:=nil;
    exit;
  end;
  if L^.next = L^.prev then begin
    dispose(L^.next);
    L^.prev:=nil;
    L^.next:=nil;
    exit;
  end;
  L^.next:=p^.next;
  dispose(p);
  p:=L^.next;
  p^.prev:=nil
end;