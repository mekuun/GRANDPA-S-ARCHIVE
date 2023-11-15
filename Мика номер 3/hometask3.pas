function ub(k:string; i:integer):boolean;
var n1, n2: integer;
begin 
if i = length(k) then ub := true
else 
begin
n1 := ord(k[i]) - 48;
n2 := ord(k[i + 1]) - 48;
ub := (n1 > n2) and ub(k, (i + 1));
end;
end;

function vozr(k:string; i:integer):boolean;
var n1, n2: integer;
begin 
if i = length(k) then vozr := true
else 
begin
n1 := ord(k[i]) - 48;
n2 := ord(k[i + 1]) - 48;
vozr := (n1 < n2) and vozr(k, (i + 1));
end;
end;

procedure recursion(var kol:integer);
var vvod: integer; a:string;
begin
read(vvod);
if vvod = 0 then exit
else begin vvod := abs(vvod); str(vvod,a) end;
if ub(a, 1) or vozr(a, 1) then kol := kol + 1;
recursion(kol);
end;

var kol:integer;
begin
kol := 0;
recursion(kol);
write(kol);
end.