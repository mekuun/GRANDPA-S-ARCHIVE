const n = 3;
var arr: array[1..n] of real;
var i, m: integer;
var x, avg, sum, dif: real;
begin
    sum:=0;
    for i:=1 to n do begin
        read(x);
        sum:=sum+x;
        arr[i]:=x;
    end;
    avg:=sum/n;
    m:=1;
    dif:=maxInt;
    for i:=1 to n do begin
        if abs(arr[i]-avg)<dif then begin m:=i; dif:=abs(arr[i]-avg); end;
    end;
    writeln(m)
end.