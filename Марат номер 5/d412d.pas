program d412d;
  var x, a, b, c, D, t1, t2: real;
begin
  read(a, b, c);
  writeln();
  D:= b * b - 4 * a * c;
  if a = 0 then writeln('Error')
  else begin
  if (a = 0) or (D < 0) or ((D = 0) and (-b / (2 * a) < 0)) then
    writeln('No roots')
  else
    if D = 0 then begin
      t1:=-sqrt(-b / (2 * a));
      t2:=sqrt(-b / (2 * a));
      if t1 = t2 then writeln('0') else if t1 > t2 then writeln(t2,' ', t1) else writeln(t1, ' ', t2);
      end
    else begin 
      t1:= (-b + sqrt(D)) / (2 * a);
      t2:= (-b - sqrt(D)) / (2 * a);
      if ((t1 < 0) and (t2 < 0)) then 
        writeln('No roots')
      else
        begin
        if (t1 > t2) and (t2 > 0) then
          writeln(-sqrt(t1), '  ', -sqrt(t2), ' ', sqrt(t2), ' ', sqrt(t1))
        else 
          if (t1 > t2) and (t2 = 0) then 
            writeln(-sqrt(t1), ' 0 ', sqrt(t1)) 
          else
            if (t1 > t2) and (t2 < 0) and (t1 > 0) then 
              writeln(-sqrt(t1), ' ', sqrt(t1))
            else 
              if (t1 = 0) and (t2 < 0) then
                writeln(' 0 ')
            else
              if (t1 > t2) and (t2 < 0) then 
                writeln(' 0 ')
                else
                if (t2 > t1) and (t1 > 0) then
                  writeln(-sqrt(t2), '  ', -sqrt(t1), ' ', sqrt(t1), ' ', sqrt(t2)) 
                else 
                  if (t2 > t1) and (t1 = 0) then
                    writeln(-sqrt(t2), ' 0 ', sqrt(t2)) 
                  else 
                    if (t2 > t1) and (t1 < 0) and (t2 > 0) then
                      writeln(-sqrt(t2), ' ', sqrt(t2))
                    else writeln('0');
        end
        end
        end
end.