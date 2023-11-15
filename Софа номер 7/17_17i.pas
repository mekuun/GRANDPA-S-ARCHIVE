procedure build_tree(var A: Tarray; var T: Ttree; M: integer);
procedure build_sub_tree(var arr: Tarray; var tree: Ttree; s, f: integer);
var tmp,tmp2,tmp3: Ttree;
begin
  if f < s then tree := nil
  else begin
    new(tree);
    tree^.data := arr[(f+s) div 2];
    build_sub_tree(arr, tmp2, s, (f + s) div 2 - 1);
    tree^.left := tmp2;
    build_sub_tree(arr, tmp3, (f + s) div 2 + 1, f);
    tree^.right := tmp3;
  end;
end;
var t1,t2,t3: Ttree;
    i: Integer;
begin
  if M = 0 then T := nil
  else begin
    new(t);
    t^.data := a[m div 2 + 1];
    build_sub_tree(a,t1,1,m div 2);
    t^.left := t1;
    build_sub_tree(a,t2,m div 2 + 2, m);
    t^.right := t2;
  end;
end;