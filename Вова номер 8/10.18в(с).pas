const n=50; const m=40;
var a:array[1..n] of string;
c:char;
b:boolean;
i, j, k:integer;
begin
  for i:=1 to n do a[i]:='';
  read(c);
  b:=false;
  k:=1;
  while c<>'.' do begin
    if c=' ' then begin
      if b then begin
        b:=false;
        k:=k+1;
      end;
    end
    else begin
      b:=true;
      a[k]:=a[k]+c;
    end;
    read(c);
  end;
  if k<2 then exit;
  for i:=1 to k do begin
    if a[i]<>a[k] then begin
      if length(a[i])>1 then delete(a[i],1,1);
      writeln(a[i]);
    end;
  end;
end.