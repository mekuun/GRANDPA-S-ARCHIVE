function GCD(M,N:longint):longint;
begin 
  while M <> N do if M > N then M:= M - N else N:= N - M;
  GCD:=M;
end;
var a, b, c, d:longint;
begin 
  readln(a, b, c, d);
  if (a <= 0) or (b <= 0) or (c <= 0) or (d <= 0) then begin writeln('error'); exit; end;
  a:=(a * b) div GCD(a, b);
  c:=(c * d) div GCD(c, d);
  writeln((a * c) div GCD(a, c));
end.