procedure build_Tree(T:Ttree;E:Integer;var T1:Ttree); 
 procedure add(var T: ttree; x: integer);
  begin
    if T = nil then
    begin
      new(T);
      T^.data:= x;
      T^.left:= nil;
      T^.right:= nil;
    end
    else if T^.data > x then add(T^.left, x) else add(T^.right, x)
   end;
   procedure read_tree(T: ttree; E: integer; var T1: ttree);
   begin
     if T <> nil then
     begin
       if T^.data < E then add(T1, T^.data);
       read_tree(T^.left, E, T1);
       read_tree(T^.right, E, T1);
     end;
   end;
begin
  T1:= nil;
  read_tree(T, E, T1);
end;