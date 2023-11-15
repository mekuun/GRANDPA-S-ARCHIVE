program b520b;
const eps = 0.0000001;
  var x, y, n, sl, fc, pr: real;
begin
  readln(x);
  n:= 0;
  y:= x;
  fc:= 1;
  pr:= x;
  Repeat
    n:= n + 1;
    fc:= fc * 2 * n * (2 * n + 1);
    pr:= pr * x * x;
    sl:= pr/ fc;
    y:= y + sl;
  until abs(sl) < eps;
  writeln(y)
end.