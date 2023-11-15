const n=0.000001;
type complex=record re, im: real end;
function pr(var A,B:complex):complex;
var X:complex;
begin
    x.re:=(A.re*B.re) - (A.im*B.im);
    X.im:=A.re*B.im + A.im*B.re;
    pr:=x;
end;
var p,sl,sum:complex;k:integer;
begin
    k:=0;
    sum.re:=0;
    sum.im:=0;
    read(p.re);
    read(p.im);
    sl.im := 0;
    sl.re := 1;
    p:=pr(p,p);
    repeat
        sum.re:=sum.re+sl.re;
        sum.im:=sum.im+sl.im;
        k:=k+1;
        sl:=pr(sl,p);
        sl.re:=sl.re/((2*k)*(2*k-1));
        sl.im:=sl.im/((2*k)*(2*k-1));
    until abs(sl.re*sl.re+sl.im*sl.im)<n*n;
    sum.re:=sum.re+sl.re;
    sum.im:=sum.im+sl.im;
    writeln(sum.re:10:10);
    writeln(sum.im:10:10)
end.