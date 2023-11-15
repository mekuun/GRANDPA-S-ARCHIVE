const n=50; m=40;
var 
  words: array[1..n] of string[m];
  s: ansistring;
  new_word, w: string[m];
  i,j,k: integer;

begin
  read(s); k := 0; new_word := '';
  for i:=1 to length(s) do
  begin
    if s[i] = '.' then 
    begin
      k := k + 1;
      words[k] := new_word;
      break;
    end;
    if s[i] = ' ' then
    begin
      if new_word <> '' then
      begin
        k := k + 1;
        words[k] := new_word;
        new_word := '';
      end;
      continue;
    end;
    if new_word = '' then begin new_word := s[i]; end
    else new_word := new_word + s[i];
  end;
  for i:=1 to k do
  begin
    if words[i] <> words[k] then
      begin
        w:=words[i][1];
        for j:=2 to length(words[i]) do if words[i][1]<>words[i][j] then w:= w + words[i][j];
        write(w, ' ');
      end;
  end;
end.