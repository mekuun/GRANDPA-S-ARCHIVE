program a926a; 
const n= 5;
var x, i, j, k, kk :integer;g :real; A: array [1..n, 1..n] of real; B: array [1..n, 1..n] of real; C: array [1..n, 1..n] of real;
begin
  for i:=1 to n do 
    for j:=1 to n do begin 
      read(g);
      A[i][j]:= g;
      B[i][j]:= g;
    end;
  readln(x);
  if x <= 0 then begin writeln(0); exit; end;
  if x = 1 then begin for k:= 1 to n do begin for i:= 1 to n do write(A[k][i], ' '); writeln(); end; exit; end;
  for kk:=2 to x do begin
    if (kk mod 2) = 0 then
      for i:=1 to n do begin
        for j:=1 to n do begin 
          C[i][j]:= 0;
          for k:=1 to n do C[i][j]:= B[k][i] * A[i][k] + C[i][j];
        end;
      end
    else begin
      for i:=1 to n do begin
        for j:=1 to n do begin 
          B[i][j]:= 0;
          for k:=1 to n do B[i][j]:= B[k][i] * A[i][k] + B[i][j];
        end;
      end
    end;
  end;
  if (x mod 2) = 1 then for i:=1 to n do begin for j:=1 to n do write(B[i][j]); writeln(); end;
  if (x mod 2) = 0 then for i:=1 to n do begin for j:=1 to n do write(C[i][j]); writeln(); end;
end.