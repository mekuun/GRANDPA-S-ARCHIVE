procedure neg_Pos;
var fl, x, xi, krug, fli:integer;
begin 
  read(x); fl:=0; Setemptyq(Q);
  while x <> 0 do begin 
    Pushq(Q, x);
    Pushq(Q, 11011);
    Popq(Q, xi);
    fli:=0;
    krug:=0;
      while krug=0 do begin 
        if (xi=11011) then begin krug:=(2 + fli) mod 2; fli:=(fli + 1) mod 2; end else
        if ((xi > 0) and (fl=0)) or ((xi < 0) and (fl=1)) then begin
            writeln(xi);
            fli:=1;
            fl:=(fl + 1) mod 2;
            Popq(Q, xi);
          end
        else begin
          Pushq(Q, xi);
          Popq(Q, xi);
        end;
      end;
    read(x);   
  end;
  if not(isemptyq(Q)) then begin
    Popq(Q, x);
    writeln(x);
  end;
end;