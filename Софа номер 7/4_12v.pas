var a1, b1, c1, a2, b2, c2, x, y: real;
begin
    read(a1, b1, c1, a2, b2, c2);
    if (a1=0) and (b1=0) or (a2=0) and (b2=0) then begin writeln(-1); exit end;
    if (a1*b2=b1*a2) and (c1*b2=b1*c2) then begin writeln(0); exit end;
    if (a1*b2=b1*a2) then begin writeln(1); exit end;
    (*формулы Крамера*)
    x:=(c1*b2-b1*c2)/(a1*b2-b1*a2);
    y:=(a1*c2-a2*c1)/(a1*b2-b1*a2);
    writeln(x:10:10, ' ', y:10:10)
end.