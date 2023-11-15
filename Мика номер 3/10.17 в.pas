const n = 50;
const m = 40;
label 1;

var i, j:integer; last, word: string; words: array [1..n] of string; c1, c2: char; ok, onl :boolean;

begin 

for i := 1 to n do begin
c1 := '-';
c2 := '-';
onl := false;
ok := true;
word := '';
for j := 1 to m do begin 
read(c1);

if (c1 = '.') and ok then begin words[n] := word; goto 1 end;
if (c1 = '.') and not ok then begin words[n] := word; onl := false; goto 1 end;
if (c1 = ' ') and ok then begin words[i] := word; onl := true; break end;
if (c1 = ' ') and  not ok then break;
if ((c1 <> ' ') or (c1 <> '.')) and (c1 >= c2) then begin c2 := c1; word := word + c1 end;
if c2 > c1 then ok := false;
end;



end;



1:
for i := 1 to n do
if (words[n] <> words[i]) and ('' <> words[i]) then write(words[i], ' ');
end.