program pr1151;

function Intersection(A1,B1,C1,A2,B2,C2:real; var x,y :real) :boolean;
begin
if ((A2<>0) and (B2<>0)) and ((A1 / A2) = (B1 / B2)) then Intersection:=false
else if ((A2 = 0) and (A1=0)) or ((B2 = 0) and (B1=0)) then Intersection:=false
else
begin
    if A1<>0 then begin
    if (B2 - (A2*B1)/A1 = 0) then exit;
    y:=(C2 - (A2*C1)/A1)/(B2 - (A2*B1)/A1);
    x:=(C1 - B1*y)/A1;
    Intersection:=true; end;
    if (A1=0) and (A2<>0) and (B2=0) and (B1<>0) then begin x:=C2/A2; y:= C1/B1;end;
end;
end;
var a1,b1,c1,a2,b2,c2,a3,b3,c3,a,b,c,d,e,f,p,sq,r1,r2,r3:real;
begin
    read(a1,b1,c1,a2,b2,c2,a3,b3,c3);
    if not Intersection(a1,b1,c1,a2,b2,c2,a,b) or (b2 - (a2*b1)/a1 = 0) then begin write(-1);exit;end;
    if not Intersection(a1,b1,c1,a3,b3,c3,c,d) or (b3 - (a3*b1)/a1 = 0) then begin write(-1);exit;end;
    if not Intersection(a3,b3,c3,a2,b2,c2,e,f) or (b2 - (a2*b3)/a3 = 0) then begin write(-1);exit;end;
    if (a = e) and (a = c) and (d = b) and (d = f) then begin write(0);exit;end;
    r1:=sqrt(sqr(c-a) + sqr(d-b));
    r2:=sqrt(sqr(c-e) + sqr(d-f));
    r3:=sqrt(sqr(e-a) + sqr(f-b));
    p:=(r1+r2+r3)/2;
    sq:=sqrt(p*(p-r1)*(p-r2)*(p-r3));
    writeln(a,' ',b);
    writeln(c,' ',d);
    writeln(e,' ',f);
    write(sq);
end.