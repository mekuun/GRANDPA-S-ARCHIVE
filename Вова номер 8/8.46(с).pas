const n=8;
type cifra=0..9;
     Mas=array[1..n] of cifra;
var a, b, c:Mas;
carry: boolean;
i, k: integer;
begin
  carry:=true;
  for i:=1 to n do read(a[i]);
  for i:=1 to n do read(b[i]);
  for i:=n downto 1 do begin
    if carry then begin
      if a[i]+b[i]<10 then begin
        c[i]:=a[i]+b[i];
        carry:=true;
      end
      else begin
        c[i]:=(a[i]+b[i]) mod 10;
        carry:=false;
      end;
    end
    else begin
      if a[i]+b[i]+1<10 then begin
        c[i]:=a[i]+b[i]+1;
        carry:=true;
      end
      else begin
        c[i]:=(a[i]+b[i]+1) mod 10;
        carry:=false;
      end;
    end;
  end;
  if carry then writeln('correct') else writeln('overflow');
  for i:=1 to n do write(c[i], ' ');
end.