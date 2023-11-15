Const N=2; 
type TArray=array[1..n] of real;

function Max(var X:TArray):integer;
var i: integer;
begin
Max := 1;
for i:= 2 to n do if x[Max] < x[i] then Max := i;
end;

function inp():TArray; 
var i:integer;
begin
for i := 1 to n do read(inp[i]); end;
var x, y, z: TArray;
m_z, m_x, m_y: integer;
i: integer;
begin
  x := inp(); y := inp(); z := inp();
  m_x := Max(x); m_y := Max(y);
  if (m_x <= (n div 2)) and (x[m_x] = 10) and (y[m_y] <= 0) then
  begin
    m_z := Max(z);
    for i:=1 to m_z -1 do z[i] := z[i] * z[i] * z[i];
  end;
  for i:=1 to n do write(z[i]:0:0, ' ');
end.