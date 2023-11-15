var 
  k, n, a: longint;
 
 begin
   read(k);
   if k < 0 then
   begin
     write('-'); k := -k;
   end;
   if k = 0 then write('0');
   n := k div 10; a := 1;
   while n > 0 do
   begin   
     a := a * 10;
     n := n div 10;
   end;
   while a > 0 do
     begin
     write(chr(k div a + 48));
     k := k mod a;
     a := a div 10;
     end;
 end.