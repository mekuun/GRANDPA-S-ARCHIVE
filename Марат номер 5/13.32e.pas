const e=0.000001;
type complex=record re, im: real end;
var z, ans, x, k:complex; i :integer;
begin
  readln(z.re, z.im);
  ans.re:=0; ans.im:=0; 
  x.re:=1; x.im:=0;
  i:=0;
  while x.re * x.re + x.im * x.im >= e * e do begin
   ans.re:=ans.re + x.re; 
   ans.im:=ans.im + x.im;
   i:=i + 1;
   k.re:=x.re; k.im:=x.im;
   x.re:=(x.re * z.re - x.im * z.im) / i; x.im:=(k.im * z.re + k.re * z.im) / i;
   k.re:=x.re; k.im:=x.im;
   i:=i + 1;
   x.re:=-(x.re * z.re - x.im * z.im) / i; x.im:=-(k.im * z.re + k.re * z.im) / i;
   writeln(x);
  end;
  writeln(ans.re,' ', ans.im);
end.