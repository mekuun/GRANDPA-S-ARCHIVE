var a1, a2, b1, b2, c1, c2, d, dx, dy: real;
begin 
read(a1, b1, c1, a2, b2, c2);
d := a1 * b2 - a2 * b1;
dx := c1 * b2 - b1 * c2;
dy := a1 * c2 - a2 * c1;

if ((b1 = 0) and (a1 = 0)) or ((b2 = 0) and (a2 = 0)) then write('-1')
else if (d = 0) and (dx <> 0) and (dy <> 0) then write('1')
else if (d = 0) and (dx = 0) and (dy = 0) then write('0')
else write ((c1 * b2 - b1 * c2)/ (a1 * b2 - a2 * b1), ' ',  (a1 * c2 - a2 * c1)/ (a1 * b2 - a2 * b1));




end.