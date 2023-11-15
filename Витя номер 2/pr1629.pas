function Same (L1,L2:Tlist):Boolean;
var fl:boolean;
begin
    Same:=False; fl:=false;
    while (L1<>nil) and (l2<>nil) do
        if L1^.Data <> L2^.Data then begin fl:=true; break; end
        else
        begin
            L1:=l1^.next;
            L2:=L2^.next
        end;
    if not((l1=nil) and (l2=nil)) then fl:=true;
    if not fl then
        Same:=True;
end;