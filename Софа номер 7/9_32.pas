var symb: array ['a'..'z', 'a'..'z'] of integer; i, j: char; max: integer; cur, y, first, a, b, last: char;

begin
    max:=0; first:='-';
    for i:='a' to 'z' do begin
        for j:='a' to 'z' do symb[i][j]:=0; end;
    read(cur); y := ',';

    while cur <> '.' do begin
        if y = ',' then first:=cur else
            if cur = ',' then begin last:=y; symb[first][last]:=symb[first][last]+1 end;
        y := cur; read(cur)
    end;

    last:= y;
    symb[first][last]:=symb[first][last]+1;
    if first='-' then first:=last; 
    for i := 'a' to 'z' do begin
        for j := 'a' to 'z' do begin
            if symb[i][j] > max then begin max:=symb[i][j]; a:=i; b:=j end;
        end;
    end;
    write(a, ' ', b)
end.
