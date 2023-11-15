procedure Reverse(L:Tlist); 
begin
  if L=nil then exit;
  Reverse(L^.next);
  write(L^.data);
end;