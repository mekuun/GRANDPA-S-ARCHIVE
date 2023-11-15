function sum_of_divisors(k: integer): longint;
var i: integer; s: longint;
begin 
    s:=0;
    for i:=1 to trunc(sqrt(k)) do begin
        if (k mod i = 0) then s:=s+i+(k div i);
        if (k = i*i) then s:=s-i;
    end;
    sum_of_divisors:=s-k;
end;
var j, m, n: longint;
var arr: array[1..2] of longint;
begin
    read(n);
    if n<2 then writeln('Error') else begin
    for j:=2 to n do begin
        m:=sum_of_divisors(j);
        if (m<=n) and (sum_of_divisors(m)=j) then
            if m<=j then begin arr[1]:=m; arr[2]:=j; end else begin arr[1]:=j; arr[2]:=m; writeln(arr[1], ' ', arr[2]); end;
    end;
    end;
end.
