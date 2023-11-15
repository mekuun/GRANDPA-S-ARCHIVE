procedure Addfirst(var L:Tlist; E:real); 
var p, nov:Tlist;
begin 
  if L = nil then begin 
    new(nov);
    L:=nov;
    nov^.Data:=E;
    nov^.next:=L;
    exit;
  end;
  p:=L^.next;
  while p^.next <> L do p:=p^.next;
  new(nov);
  p^.next:=nov;
  nov^.Data:=E;
  nov^.next:=L;
  L:=nov;
end;