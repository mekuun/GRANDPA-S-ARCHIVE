var
a, i, j, f :integer;
begin
read(a);
for i:= 2 to a do
begin
f:=0;  
for j:=2 to trunc(sqrt(i)) do
if i mod j=0 then begin; f:=1; break; end;
if f=0 then write(i,' ');
end;
end.