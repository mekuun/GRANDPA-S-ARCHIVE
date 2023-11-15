function Equal(T1,T2:TTree):Boolean;
begin
  Equal:=true;
  if ((T1<>nil) and (T2=nil)) or ((T2<>nil) and (T1=nil)) then begin
    Equal:=false;
    exit;
  end;
  if (T1<>nil) and (T2<>nil) then
    if T1^.data<>T2^.data then begin
      Equal:=false;
      exit;
    end else Equal:=Equal(T1^.left,T2^.left) and Equal(T1^.right,T2^.right)
end;
