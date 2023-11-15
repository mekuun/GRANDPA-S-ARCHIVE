var x, d, p: real;
var num, i: integer;
const n=5;
begin
    p:=1;
    for i:=1 to n do begin
        read(x);
        d:=frac(abs(x));
        if (d>0.5) then d:= 1-d;
        if d<p then begin num:=i; p:=d; end
    end;
    writeln(num)
end.