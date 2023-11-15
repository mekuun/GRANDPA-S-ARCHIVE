const n = 2; m = 3;
var matrix: array [1..n, 1..m] of real;
maxcolumn, mincolumn: array [1..m] of real; {min и max столбцов: индекс = строка элемента в матрице}
minrow, maxrow: array [1..n] of real; {min и max строк: индекс = столбец элемента в матрице}
i, j: integer;

begin
for i := 1 to n do begin maxrow[i] := -MaxInt; minrow[i] := MaxInt end;
for i := 1 to m do begin maxcolumn[i] := -MaxInt; mincolumn[i] := MaxInt end;

for i := 1 to n do
    for j := 1 to m do begin 
        read(matrix[i][j]);
        if matrix[i][j] > maxrow[i] then maxrow[i] := matrix[i][j];
        if matrix[i][j] < minrow[i] then minrow[i] := matrix[i][j];
        if matrix[i][j] > maxcolumn[j] then maxcolumn[j] := matrix[i][j];
        if matrix[i][j] < mincolumn[j] then mincolumn[j] := matrix[i][j];
end;

for i := 1 to n do
    for j := 1 to m do 
        if (matrix[i][j] = maxrow[i]) and (matrix[i][j] = mincolumn[j]) or(matrix[i][j] = minrow[i]) and (matrix[i][j] = maxcolumn[j]) then writeln(i, ' ', j);

end.