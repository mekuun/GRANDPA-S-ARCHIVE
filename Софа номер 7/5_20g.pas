const e = 0.0000001;
var x, s, k, m, i: real;
begin
    read(x);
    if abs(x) >=1 then begin write('Error'); exit; end;
    k:=2;
    s:=x;
    m:=-1;
    i:=x;
    while abs(x*i*(k-1)/k)>=e do begin
    x:=x*i*(k-1)/k;
    s:=s+m*x;
    m:=m*-1;
    k:=k+1;
    end;
    write(s:6:6);
end.
