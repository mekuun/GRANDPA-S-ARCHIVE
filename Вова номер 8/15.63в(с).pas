type Tstr1=string[10]; Tstr2=string[12]; Tsex=(M,F);
 Tstud=record name:record s_name:Tstr2;f_name:Tstr1;end;
 sex:Tsex; marks:array[1..5]of 2..5;end;
 Tfile=file of Tstud;
label 1;
var g:Tfile;
t:text;
s:Tstud;
x, y:string;
a:array[1..30] of string;
i, j, n:integer;
b, p:boolean;
begin
  assign(g, '1.std');
  assign(t, '2.txt');
  reset(g);
  rewrite(t);
  n:=0;
  for i:=1 to 30 do a[i]:='';
  while not eof(g) do begin
    b:=false;
    p:=true;
    x:='';
    read(g, s);
    for i:=1 to 5 do begin
      if s.marks[i]=4 then b:=true else if s.marks[i]<>5 then begin
        p:=false;
        break;
      end;
      x:=x+' '+chr(s.marks[i]+48);
    end;
    if b and p then begin
      if n=30 then begin
        write(t, 'Количество записей больше максимально допустимого');
        goto 1;
      end;
      n:=n+1;
      if s.sex=M then y:='M' else y:='F';
      a[n]:=s.name.s_name+' '+s.name.f_name+' '+y+x;
    end;
  end;
  for i:=1 to n-1 do
    for j:=n-1 downto i do
      if a[j]>a[j+1] then begin
        x:=a[j];
        a[j]:=a[j+1];
        a[j+1]:=x;
      end;
  for i:=1 to n do writeln(t, a[i]);
  1: close(g);
  close(t);
end.