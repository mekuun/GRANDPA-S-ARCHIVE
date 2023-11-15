procedure Delete_Minimal(var T:Ttree); 
var p:Ttree;
begin
  if T=nil then exit;
  if T^.left<>nil then Delete_Minimal(T^.left)
  else begin
    p:=T;
    T:=T^.right;
    dispose(p);
  end;
end;
