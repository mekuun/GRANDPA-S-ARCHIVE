const n = 2;
const m = 3;
var i, j, x: integer;
var matrix: array[1..n, 1..m] of integer;
var flag: array[1..n] of boolean;
begin
    for i:=1 to n do begin
        for j:=1 to m do begin
            read(x);
            matrix[i][j]:=x;
        end;
        flag[i]:=true;
    end;
    for i:=1 to n do begin
        for j:=2 to m do
            if matrix[i][j-1]<=matrix[i][j] then begin flag[i]:=false; break; end
    end;
    for i:=1 to n do write(flag[i], ' ');
end.
