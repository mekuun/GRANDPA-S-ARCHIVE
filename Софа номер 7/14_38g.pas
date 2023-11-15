var voiceless_cons, allowed: set of char; x, y, i: char; count: array[','..'z'] of integer;
flag: array[','..'z'] of boolean; {if the letter already found in current word}
word_count:integer;
begin
    voiceless_cons:=['c', 'f', 'h', 'k', 'p', 'q', 's', 't', 'x']; allowed:=['a'..'z', ','];
    for i:=',' to 'z' do begin count[i]:=0; flag[i]:=false; end;
    
    read(x);
    word_count:=0;
    if (x='.') or (x=',') then begin writeln('error'); exit; end;
    while x<>'.' do begin
        y:=x; read(x);
        
        if y=',' then  begin
            word_count:= word_count+1;
            for i:=',' to 'z' do flag[i]:=false;
        end;
        
        //conditions of error
        if (y=',') and ((x=',') or (x='.')) then begin writeln('error'); exit; end;
        if not (y in allowed) then begin writeln('error'); exit; end;
        
        if not(flag[y]) then begin count[y]:=count[y]+1; flag[y]:=true; end;
        
    end;
    word_count:=word_count+1; {include last word}
    for i:='a' to 'z' do
        if (count[i]<word_count) and (i in voiceless_cons) then write(i);
end.