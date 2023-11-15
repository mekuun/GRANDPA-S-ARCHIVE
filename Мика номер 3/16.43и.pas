procedure Add_Between_Equals(L:Tlist;E:real); 
var L1, previous:tlist;
begin 
if L^.next = nil then exit 
else while L^.next <> nil do begin 
if L^.data = (L^.next)^.data then begin
    new(L1);
    L1^.data := E;
    L1^.next := L^.next;
    L^.next^.prev := L1;
    L^.next := L1;
    L1^.prev := L;
    L := L1^.next 
end
else L := L^.next
end;
end;