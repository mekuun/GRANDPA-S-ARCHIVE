var h, m, s, t, h1, m1, s1: longint;
begin
    read(h, m, s, t);
    if (h<0) or (h>23) or (m<0) or (m>59) or (s<0) or (s>59) or (t<0) then begin writeln('Error'); exit; end
    else
        s1:= (s+t) mod 60;
        m1:= (m + (s+t) div 60) mod 60;
        h1:= (h + (m + (s+t) div 60) div 60) mod 24;
        writeln(h1, ' ', m1, ' ', s1)
end.