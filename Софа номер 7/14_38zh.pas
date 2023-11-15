var voiced_cons, letters1, letters2, allowed: set of char; x, y, i: char; flag: array[','..'z'] of boolean;
begin
    voiced_cons:=['b', 'd', 'g', 'j', 'l', 'm', 'n', 'r', 'v', 'w', 'y', 'z'];
    letters1:=[]; letters2:=[]; allowed:=['a'..'z', ','];
    for i:=',' to 'z' do flag[i]:=false;
    read(x);
    if (x='.') or (x=',')then begin writeln('error'); exit; end;
    while x<>'.' do begin
        y:=x; read(x);
        if y=',' then 
            for i:='a' to 'z' do flag[i]:=false;
            
        if (y=',') and ((x=',') or (x='.')) then begin writeln('error'); exit; end;
        if not (y in allowed) then begin writeln('error'); exit; end;
        
        if not(y in letters1) then begin letters1:=letters1+[y]; flag[y]:=true; end else
            if not(flag[y]) then letters2:=letters2+[y];
    end;
    for i:='a' to 'z' do
        if i in voiced_cons*letters2 then writeln(i);
end.