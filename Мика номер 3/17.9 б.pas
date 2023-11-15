function Equal(T1,T2:TTree):Boolean; 
function Isleaf(L:TTree):boolean;
begin
Isleaf := ((L^.right = nil) and (L^.left = nil));
end;

begin
Equal := true;
if (T1 = nil) and (T2 = nil) then exit;
if (T1 = nil) and (T2 <> nil) or (T2 = nil) and (T1 <> nil) then begin Equal := false; exit end;

if not Isleaf(T1) and not Isleaf(T2) then
begin
Equal := Equal(T1^.left,T2^.left)and Equal(T1^.right,T2^.right) and (T1^.data = T2^.data);
if Equal <> true then exit
end
else if T2^.data <> T1^.data then begin Equal := false; exit end;
if not Isleaf(T1) and Isleaf(T2) or not Isleaf(T2) and Isleaf(T1) then begin Equal := false; exit end;
end;