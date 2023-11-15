procedure Output_ab(var F:Tfi; A,B:integer); 
var x:integer;
begin
Setemptys (S);
Setemptyq (Q);
reset(F);
while not eof(F) do begin
    read(F, x);
    Pushs (S,X);
    Pushq (Q,X);
    end;
close(F);
while not(Isemptys(S)) do begin Pops (S,X); if x < A then write (x, ' ') end;
while not(Isemptyq(Q)) do begin Popq (Q,X); if (x >= A) and (x <= B) then write (x, ' ') else Pushs (S,X) end;
while not(Isemptys(S)) do begin Pops (S,X); if x > B then write (x, ' ') end;
end;