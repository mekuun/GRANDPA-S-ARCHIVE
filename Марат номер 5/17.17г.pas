procedure Write_to_file(T:Ttree;var F:Tfile); 
procedure ans(T:Ttree;var F:Tfile);
begin
  if T=nil then exit;
  if (T^.left = nil) and (T^.right = nil) then write(f, T^.data)
  else begin 
    ans(T^.left, f);
    write(f, T^.data);
    ans(T^.right, f);
  end;
end;
begin
  rewrite(f);
  ans(T, f);
  close(f);
end;