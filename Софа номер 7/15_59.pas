var f1, f2, g: text; cur: char; n: integer;
begin
    assign(f1, '1.txt'); assign(f2, '2.txt'); assign(g, 'help.txt');
    reset(f1); rewrite(g);
    while not(eof(f1)) do begin
        read(f1, cur);
        write(g, cur);
    end;
    rewrite(f1); reset(f2);
    while not(eof(f2)) do begin
        read(f2, cur);
        write(f1, cur);
    end;
    rewrite(f2); reset(g);
    while not(eof(g)) do begin
        read(g, cur);
        write(f2, cur);
    end;
    close(f1); close(f2);  close(g); erase(g);
end.