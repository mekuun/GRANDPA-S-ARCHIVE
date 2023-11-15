procedure positive(var f, g: text);
var x, y: integer;
begin
    reset(f); rewrite(g);
        while not(eof(f)) do begin
            read(f, x); read(f, y); 
            if x>0 then begin write(g, x); write(g, ' '); end;
            if y>0 then begin write(g, y); write(g, ' '); end;
        end;
    close(f); close(g);
end;