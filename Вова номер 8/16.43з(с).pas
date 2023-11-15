procedure Add_Last(L:Tlist; E:real);
var p, q:Tlist;
begin
  q:=L;
  if L^.next=nil then begin
    p:=L^.next;
    new(p);
    p^.prev:=nil;
  end else begin
    while L^.next<>nil do L:=L^.next;
    p:=L^.next;
    new(p);
    p^.prev:=L;
  end;
  p^.data:=E;
  p^.next:=nil;
  L^.next:=p;
  q^.prev:=p;
end;
