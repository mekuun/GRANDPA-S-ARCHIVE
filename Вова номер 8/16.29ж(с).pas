procedure Add_to_end(var L1:Tlist; L2:Tlist);
var r:real;
p, q, x, y:Tlist;
begin
  if L2=nil then exit;
  if L1=nil then begin
    new(p);
    p^.next:=nil;
    L1:=p;
    q:=L2;
    new(x);
    p^.next:=x;
    x^.data:=q^.data;
    x^.next:=nil;
    p:=x;
    q:=q^.next;
    y:=L1;
    L1:=L1^.next;
    dispose(y);
  end else begin
    p:=L1;
    while p^.next<>nil do p:=p^.next;
    q:=L2;
  end;
  while q<>nil do begin 
    new(x);
    p^.next:=x;
    x^.data:=q^.data;
    x^.next:=nil;
    p:=x;
    q:=q^.next;
  end;
end; 