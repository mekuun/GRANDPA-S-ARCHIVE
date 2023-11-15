function Triangle_Area(X1,Y1,X2,Y2,X3,Y3:real):real;
begin
  if (abs((x2-x1)*(y3-y1) - (x3-x1)*(y2-y1))) < 0.000001 then Triangle_Area := 0
  else Triangle_Area := abs((x2-x1)*(y3-y1)-(x3-x1)*(y2-y1)) / 2;
end;
var X1,Y1,X2,Y2,X3,Y3,ar_1,ar_2: real;
begin
  read(x1);read(y1);read(x2);read(y2);read(x3);read(y3);
  ar_1 := Triangle_Area(X1,Y1,X2,Y2,X3,Y3);
  read(x1);read(y1);read(x2);read(y2);read(x3);read(y3);
  ar_2 := Triangle_Area(X1,Y1,X2,Y2,X3,Y3);
  if ar_1 > ar_2 then write(1);
  if ar_1 < ar_2 then write(2);
  if ar_1 = ar_2 then write('=');
end.