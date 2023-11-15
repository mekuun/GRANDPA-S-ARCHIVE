var
  cos_x, sl, x, delimoe, slagaemoe, fact: real;
  znak, n : integer;
const eps = 0.000001;
begin
  read(x);
  cos_x := 1;
  znak := 1;
  delimoe := 1;
  fact := 1;
  slagaemoe := 1;
  n := 0;
  while abs(slagaemoe) > eps do
  begin
  znak := -znak;
  delimoe := delimoe * x * x;
  fact := fact * (2 * n + 1) * 2 * (n + 1);
  slagaemoe := delimoe / fact * znak;
  cos_x := cos_x + slagaemoe;
  n := n + 1;
  end;
  write(cos_x);
 end.