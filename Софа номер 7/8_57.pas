var cur: char; symb: array['!'..'~'] of boolean; i: char; flag: boolean;
begin
    cur:='0';
    for i:='!' to '~' do symb[i]:=false;
    
    while cur<>'.' do begin
        read(cur);
        if not(symb[cur]) and (cur<>'.') then begin write(cur); symb[cur]:=true; end;
    end;
end.