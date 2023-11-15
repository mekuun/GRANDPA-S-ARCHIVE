const n = 50;
const m = 40;
label 1;

var i, j:integer; last, word: string; words: array [1..n] of string; c1: char; neww :boolean;

procedure noMid(var word:string);
var i, c:integer; a:string;
begin
a:= '';
c := ord(word[0]);
if (c mod 2) <> 0 then 
for i := 1 to c do
if i <> (c + 1)/2 then a := a + word[i];
word := a;
end;



begin 
for i := 1 to n do begin
neww := False;
c1 := '-';
word := '';
for j := 1 to m do begin 
read(c1);
if c1 = '.' then begin words[n] := word; goto 1 end;
if c1 <> ' ' then begin word := word + c1; neww := True end;
if (c1 = ' ') and (neww = True) then begin words[i] := word; break end
end;

end;

1:
for i := 1 to n do 
if (words[n] <> words[i]) and ('' <> words[i]) and ((ord(words[i][0]) mod 2) <> 0) and (ord(words[i][0]) <> 1)then begin noMid(words[i]); write(words[i], ' ') end
else if (words[n] <> words[i]) and ('' <> words[i]) and (((ord(words[i][0]) mod 2) = 0) or (ord(words[i][0]) = 1)) then write(words[i], ' ');

end.