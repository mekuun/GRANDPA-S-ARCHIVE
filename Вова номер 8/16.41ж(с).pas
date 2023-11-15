procedure DeleteFirst(var L:Tlist);
var p:Tlist;
begin
  if L = nil then exit;
  if L^.next = L then begin dispose(L); L := nil end
  else begin
    p := L;
    while L^.next^.next <> p^.next do L := L^.next;
    L^.next := L^.next^.next;
    L := L^.next;
    dispose(p)
  end;
end;
