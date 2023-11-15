program a930a;
const n=5; e=0.00000001;
var i, j, l: integer; c: real; a: array[1..n, 1..n] of real; t: boolean;
begin 
	t:= true;
	for i:=1 to n do for j:=1 to n do read(a[i][j]);
	for i:= n downto n-2 do for j:=1 to i-1 do begin
	  c:=0;
	  for l:=1 to n do c:=c + a[i][l] * a[j][l];
	  if abs(c) < e then c:=0;
	  if c <> 0 then t:=false; 
	end;
	i:=1;
	while i <= n do begin 
	  c:=0; 
	  for j:=1 to n do c:= c+sqr(a[i][j]);
	  if c<>1 then t:=false;
	  i:=i+1;
	  end;
	write(t);
end.
