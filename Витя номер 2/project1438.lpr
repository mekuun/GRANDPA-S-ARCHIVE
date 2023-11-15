program pr1438;

type Mass= Array[1..26] of char;
const lst2: Mass= ('a', 'b', 'c', 'd', 'e', 'f','g', 'h', 'i', 'j', 'k','l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't','u', 'v', 'w', 'x', 'y', 'z');
var lst: array[1..26] of boolean; i: integer; x1: char; fl, fl2: boolean; w1: set of char;
begin 
   w1:= ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z'];
   fl:=false;
   for i:=1 to 26 do
   lst[i]:=false;
   fl2:=false;
   repeat
     read(x1);
     if not fl then
     if x1<>'.' then
     fl:=true;
     if ((ord(x1) < 97) or (ord(x1) > 122)) and (ord(x1) <> 32) and (ord(x1) <> 46) and (ord(x1) <> 44) then begin write('Error'); exit; end;
     if not fl2 then
     if (x1=',') or (x1='.') then begin write('Error'); exit; end;
     if not fl2 then
     if x1<>',' then fl2:=true;
     if fl2 then
     if x1=',' then fl2:=false;
     if x1 in w1 then
      lst[ord(x1)-96]:=true;
   until x1 = '.';
   if not fl then begin write('Error'); exit; end;
   for i:=1 to 26 do
   if (lst[i]=false) and (lst2[i] in w1) then write(lst2[i]);
end.

