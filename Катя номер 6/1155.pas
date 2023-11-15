function Prime(K:integer):Boolean;
var i:integer;
begin
  prime:=True;
  for i:=2 to round(sqrt(k)) do if (k mod i) = 0 then begin prime:=False; break; end; 
end;

var i,n, l_p:integer;
begin
  read(n);
  if n < 2 then write('Error')
  else begin
    l_p:=2;
    for i:= 3 to n do begin
      if prime(i) then begin
        if (i-l_p)=2 then write(l_p, ' ', i, ' ');
        l_p:= i;
      end;
    end;
  end;
end.