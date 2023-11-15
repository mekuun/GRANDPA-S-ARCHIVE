procedure Add_E1(var L:Tlist;E1,E:real);
var p: Tlist;
begin 
  if L = nil then exit;
  if L^.Data = E then begin 
    new(p);
    p^.next:=nil;
    p^.next:=L;
    p^.Data:=E1;
    L:=p;
    exit;
  end
  else Add_E1(L^.next,E1,E)
end;