function intersection(a1, b1, c1, a2, b2, c2: real; var x, y: real): boolean;
begin
    if ( (a1=0) and (b1=0) or (a2=0) and (b2=0) ) or ( (a1*b2=b1*a2) and (c1*b2=b1*c2) ) or ( (a1*b2=b1*a2) ) then intersection:=false else begin
    (*формулы Крамера*)
    x:=(c1*b2-b1*c2)/(a1*b2-b1*a2);
    y:=(a1*c2-a2*c1)/(a1*b2-b1*a2);
    intersection:=true;
    end
end;
var a1, b1, c1, a2, b2, c2, a3, b3, c3: real;
var x12, y12, x23, y23, x13, y13: real;
begin
    read(a1, b1, c1, a2, b2, c2, a3, b3, c3);
    if (intersection(a1, b1, c1, a2, b2, c2, x12, y12) = false) or (intersection(a2, b2, c2, a3, b3, c3, x23, y23)=false) or (intersection(a1, b1, c1, a3, b3, c3, x13, y13) = false) then 
        begin writeln(-1); exit; end;
    if (x12 = x23) and (x12=x13) and (y12 = y23) and (y12=y13) then begin writeln(0); exit; end;
    writeln(x12:10:10, ' ', y12:10:10,' ', x13:10:10,' ', y13:10:10,' ', x23:10:10,' ', y23:10:10,' ', abs( (x12-x23)*(y13-y23) - (y12-y23)*(x13-x23) )/2:10:10);
end.