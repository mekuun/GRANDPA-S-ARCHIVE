procedure DeleteFirst(var L:Tlist);
var L1:tlist;
begin
if L = nil then exit
else if L^.next = L then begin dispose(L); L := nil end
else begin
L1 := L;
while L^.next^.next <> L1^.next do L := L^.next;
L^.next := L^.next^.next;
L := L^.next;
dispose(L1)
end;
end;
