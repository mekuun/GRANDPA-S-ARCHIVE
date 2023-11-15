function mc(a, n:integer):integer;
begin
  if a<>0 then begin
    if abs(a mod 10)>n then n:=abs(a mod 10);
    mc:=mc(a div 10, n)
  end else mc:=n;
end;

function nmc(a, m:integer):integer;
begin
  if a<>0 then begin
    if mc(a,0)<mc(m,0) then m:=a;
    read(a);
    nmc:=nmc(a, m);
  end else nmc:=m;
end;

var a:integer;
begin
  read(a);
  if a=0 then writeln(0) else writeln(nmc(a,a));
end.