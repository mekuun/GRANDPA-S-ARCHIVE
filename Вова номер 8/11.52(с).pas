function Ttype(A,B,C:real):integer;
var x,y,z:real;
begin
  if (a>b) and (a>c) then begin 
    x:=a; y:=b; z:=c;
  end else if (b>a) and (b>c) then begin 
      x:=b; y:=a; z:=c;
    end else begin x:=c; y:=a; z:=b; end;
  if x>=y+z then begin Ttype:=-1; exit; end;
  if x*x<y*y+z*z then begin Ttype:=1; exit; end;
  if x*x=y*y+z*z then begin Ttype:=2; exit; end;
  if x*x>y*y+z*z then Ttype:=3;
end;

var a1, b1, c1, a2, b2, c2:real;
m, n:integer;
begin
  read(a1, b1, c1, a2, b2, c2);
  m:=Ttype(a1, b1, c1);
  n:=Ttype(a2, b2, c2);
  if (m=-1) or (n=-1) then begin writeln(-1); exit; end;
  if m=n then writeln(m) else writeln(0);
end.