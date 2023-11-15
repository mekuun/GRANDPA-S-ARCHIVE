const n=50; m=40;
var k, max_len, len_a, i: integer;
new_word: string;
a:char;
words: array[1..n] of string[m];

begin
  k := 0; max_len := 0; new_word := ''; len_a := 0; read(a);
  while a <> '.' do begin
    if (new_word <> '') and (a = ' ') then begin
      if max_len < len_a then max_len := len_a;
      if len_a = max_len then
      begin
        k:= k + 1;
        words[k] := new_word;
      end;
      new_word := ''; len_a := 0;
    end;
    if a = ' ' then begin read(a); continue; end;
    len_a := len_a + 1;
    new_word := new_word + a;
    read(a);
  end;
  k := k + 1;
  if max_len < len_a then max_len:= len_a;
  words[k] := new_word;
  for i:= 1 to k-1 do begin
    if (length(words[i]) = max_len) and (words[i] <> words[k]) then write(words[i], ' ');
  end;
end.