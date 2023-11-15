function sum_of_digits(n: integer): integer;
begin
    n:=abs(n);
    if (n div 10 = 0) then sum_of_digits:=n else
        sum_of_digits:=n mod 10 +sum_of_digits(n div 10);
end;

procedure input(var mx, n: integer);
var cur, sum: integer;
begin
    read(cur); if cur=0 then exit;
    sum:=sum_of_digits(cur);
    if sum>mx then begin mx:=sum; n:=cur; end;
    input(mx, n);
end;

var m, maxsum: integer;
begin
    m:=0; maxsum:=0;
    input(maxsum, m);
    writeln(m);
end.