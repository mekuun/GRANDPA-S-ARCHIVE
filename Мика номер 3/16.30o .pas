procedure Copy_List(L:Tlist;var L1:Tlist); 
begin
if L = nil then exit;
new(L1);
if L^.next = nil then begin L1^.data := L^.data; L1^.next := nil end
else begin  L1^.data := L^.data; Copy_List(L^.next,L1^.next)
end;
end;