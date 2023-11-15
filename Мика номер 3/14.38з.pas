function IsIn(word:string; letter:char):boolean;
var i:integer;
begin
IsIn := true;
for i := 1 to length(word) do if word[i] = letter then begin IsIn := false; exit end;
end;

type S = array[1..2,1..5] of char;

procedure AddLetter(word:string; var yes:S);
var i: integer;
begin
for i := 1 to 5 do if (IsIn(word, yes[1][i]) and (yes[2][i] < '3')) then yes[2][i] := succ(yes[2][i]);
end;



var allchar:set of char; a:char; emptyword:boolean; word:string; yes:S; i:integer;

begin
emptyword := true;
read(a);
word := '';
yes[1][1] := 'a'; yes[1][2] := 'e'; yes[1][3] := 'i'; yes[1][4] := 'o'; yes[1][5] := 'u'; 
yes[2][1] := '0'; yes[2][2] := '0'; yes[2][3] := '0'; yes[2][4] := '0'; yes[2][5] := '0'; 

allchar := ['a'..'z'] + ['.', ','];
if a = '.' then begin write('Error'); exit end;
while a <> '.' do begin
if (emptyword and (a = ',')) or (not (a in allchar)) then begin write('Error'); exit end;
if a <> ',' then emptyword := false else begin AddLetter(word, yes); emptyword := true; word := '' end;
if (a <> ',') then word := word + a;
read(a);
if a = '.' then AddLetter(word, yes)
end;
if emptyword then begin write('Error'); exit end;

for i := 1 to 5 do if (yes[2][i] = '2') or (yes[2][i] = '3') then write (yes[1][i]);
writeln;


end.