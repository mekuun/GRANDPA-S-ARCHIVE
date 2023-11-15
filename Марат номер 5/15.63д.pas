type Tstr1=string[10]; Tstr2=string[12];Tsex=(M,F);
   Tstud=record name:record s_name:Tstr2;f_name:Tstr1;end;
   sex:Tsex; marks:array[1..5]of 2..5;end;
   Tfile=file of Tstud;
var orig: Tfile; otv: text; i, ff, s: integer; ans: array[10..250] of array[1..300] of Tstud; student: Tstud;
begin
    assign(orig, '1.std'); assign(otv, '2.txt'); 
    reset(orig); rewrite(otv);
    for ff:=10 to 25 do for i:=1 to 30 do ans[ff][i].name.s_name:='';
    i:=0;
    while not(eof(orig)) do begin
      read(orig, student);
      i:=i+1; 
      s:=0;
      for ff:=1 to 5 do s:=s + student.marks[ff];
      ff:=1;
      while ans[s][ff].name.s_name <> '' do ff:=ff + 1;
      ans[s][ff]:= student;
      end;
    close(orig);
    if i > 30 then writeln(otv, 'Количество записей больше максимально допустимого') else begin
      for i:=25 downto 10 do begin
        ff:=1;
        while ans[i][ff].name.s_name <> '' do begin
          writeln(otv, ans[i][ff].name.s_name, ' ', ans[i][ff].name.f_name, ' ', i / 5:1:1);
          ff:=ff + 1;
        end;
      end;
    end;
    close(otv)
end.
    