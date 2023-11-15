const c = 0.000001;
type complex=record re,im: real end;
var z, slag, t:complex; n:integer; temp:real;
begin
  read(z.re); read(z.im);
  if z.re * z.re + z.im * z.im < 1 then
  begin
    t.re:=0; t.im:=0; slag.re:=z.re; slag.im:=z.im; n:=1;
    while abs(slag.re * slag.re + slag.im * slag.im) > (c*c) do
    begin
      if n mod 2 = 1 then begin
      t.re := t.re + slag.re / n;
      t.im := t.im + slag.im / n;
      end
      else
      begin
        t.re := t.re - slag.re / n;
        t.im := t.im - slag.im / n;
      end;
      temp:=slag.re;
      slag.re:= slag.re * z.re - slag.im * z.im;
      slag.im:= slag.im * z.re + temp * z.im;
      n:= n + 1;
    end;
    write(t.re, ' ', t.im);
  end
  else write('Error');
end.