procedure Create(var T:TTree;n:Integer); 
var p:TTree;
begin
  if n <= 0 then begin T:=nil; exit; end;
  new(p); T:=p; p^.data:=n;
  create(p^.left, n - 1);
  create(p^.right, n - 1);
end;