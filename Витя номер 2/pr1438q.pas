program pr1438q;

type Mass= Array[1..26] of char;
const lst3: Mass= ('a', 'b', 'c', 'd', 'e', 'f','g', 'h', 'i', 'j', 'k','l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't','u', 'v', 'w', 'x', 'y', 'z'); alp=26;
var lst: array[1..100, 1..100] of char; i, j, k, l:integer; w: set of char; x:char; lst1: array[1..alp] of integer; lst2: array[1..alp] of boolean;lst4: array[1..alp] of boolean;
begin
    i:=1; j:=1; l:=0;
    w:= ['b', 'd', 'g', 'j', 'l', 'm', 'n', 'r', 'v', 'w', 'y', 'z'];
    repeat
    read(x);
    if ((ord(x) < 97) or (ord(x) > 122)) and (ord(x) <> 32) and (ord(x) <> 46) and (ord(x) <> 44) then begin write('Error'); exit; end;
    if (x<>',') and (x<>'.') then begin lst[i,j]:=x; j:=j + 1; end;
    if x=',' then begin if j=1 then begin write('Error'); exit; end; if j>l then l:=j; j:=1; i:=i+1 end;
    if x='.' then begin if j=1 then begin write('Error'); exit; end; if j>l then l:=j; end;
    until x='.';
    l:=l+1;
    
    for j:=1 to alp do
    begin
    lst1[j]:=0;
    lst2[j]:=false
    end;

    for j:=1 to i do
    begin
    if j mod 2 = 1 then 
    begin
    for k:=1 to alp do
    lst4[k]:=false;
    for k:=1 to l do
    if lst[j,k] in w then
    if (lst3[ord(lst[j,k]) - 96]=lst[j,k]) and (not lst4[ord(lst[j,k]) - 96]) then begin lst1[ord(lst[j,k]) - 96]:=lst1[ord(lst[j,k]) - 96]+1; lst4[ord(lst[j,k]) - 96]:=true;end;
    end;

    if j mod 2 = 0 then
    for k:=1 to l do
    if lst[j,k] in w then
    if lst3[ord(lst[j,k]) - 96]=lst[j,k] then lst2[ord(lst[j,k]) - 96]:=true;
    end;
    
    for j:=1 to alp do
    if (lst1[j]=(i+1) div 2) and (not lst2[j]) then write(lst3[j])
end.

