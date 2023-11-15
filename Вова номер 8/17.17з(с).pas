procedure Build_Tree(var F:Tfile;var T:TTree);
procedure Build_Tree1(var F:Tfile;var T:TTree);
procedure Add(var T:TTree; e:integer);
var p:TTree;
begin
  if T=nil then begin
    new(p);
    p^.left:=nil;
    p^.right:=nil;
    p^.data:=e;
    T:=p;
  end else if e<T^.data then Add(T^.left, e)
    else Add(T^.right, e);
end;

var n:integer;
begin
  if not eof(F) then begin
    read(F, n);
    Add(T, n);
    Build_Tree1(F,T);
  end;
end;

begin
  T:=nil;
  reset(F);
  Build_Tree1(F,T);
  close(F);
end;