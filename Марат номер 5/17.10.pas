function Same(T: TTree): boolean;
var S: set of char;
function same2(T: TTree):boolean;
begin 
  if T=nil then same2:=false else
  if T^.data in S then same2:=true else begin 
    S:=S+[T^.data];
    if same2(T^.left) then same2:=true else same2:= same2(T^.right);
  end;
end;
begin
  S:=[];
  Same:=same2(T);
end;