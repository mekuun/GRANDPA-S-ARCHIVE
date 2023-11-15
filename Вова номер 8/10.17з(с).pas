const n=50; const m=40;
var a:array[1..n] of string;
w:array[65..122] of integer;
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
  for i:=1 to k do begin
    b:=false;
    if a[i]<>a[k] then begin
      b:=true;
      for j:=65 to 122 do w[j]:=0;
      for j:=1 to length(a[i]) do w[ord(a[i][j])]:=w[ord(a[i][j])]+1;
      for j:=65 to 122 do if w[j]=1 then begin
        b:=false;
        break;
      end;
    end;
    if b then writeln(a[i]);
  end;
end.