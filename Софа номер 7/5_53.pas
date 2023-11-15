var nod, a, b, i: integer;
const n = 3;
begin
    read(a);
    a:=abs(a);
    for i:=1 to (n-1) do begin
        read(b);
        b:=abs(b);
        while (a<>b) do 
            if a>b then a:=a-b else b:=b-a;
        nod:=a;
        a:=b;
    end;
    writeln(nod)
end.