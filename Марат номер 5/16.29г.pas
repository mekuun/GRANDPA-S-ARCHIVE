function Sum(L:Tlist):Real;
var s:array [0..9999999] of real; sm:real; i, maxi, mini:integer;
begin
  if L = nil then exit;
  i:=1;
  s[0]:=0;
  maxi:=1; mini:=1; sm:=L^.Data;
  L:=L^.next;
  while L <> nil do begin 
    if s[maxi] < L^.data then maxi:=i;
    if s[mini] > L^.data then mini:=i;
    i:=i + 1;
    L:=L^.next;
  end;
  Sum:=abs(s[maxi] - s[mini])
end;