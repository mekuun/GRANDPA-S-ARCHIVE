// var A,B,C: text;d:char;
// begin
//     assign(A,'7.txt');assign(B,'2.txt'); assign(C,'3.txt');
    
//     reset(А); rewrite(C);
//     while not eof(A) do
//     if eoln(A) then
//     begin
//         readln(A);
//         writeln(c)
//     end
//     else
//     begin
//         read(A,d);
//         write(C,d)
//     end;
//     close(A); close(C);

//     reset(B); rewrite(A);
//     while not eof(B) do
//     if eoln(B) then
//     begin
//         readln(B);
//         writeln(A)
//     end
//     else
//     begin
//         read(B,d);
//         write(A,d)
//     end;
//     close(B); close(A);

//     reset(C); rewrite(B);
//     while not eof(C) do
//     if eoln(C) then
//     begin
//         readln(C);
//         writeln(B)
//     end
//     else
//     begin
//         read(C,d);
//         write(B,d)
//     end;
//     close(C); close(B);
// end.
var
     z,x,v: text;
     d: char;
 
    begin
     assign(z,'1.txt');assign(v,'2.txt');
     assign(x,'3.txt');
     reset(z);
     rewrite(x);
     while not eof(z) do
       begin
         read(z,d);
         write(x,d);
       end;
     close(z);
     close(x);
     reset(v);
     rewrite(z);
     while not eof(v) do
       begin
         read(v,d);
         write(z,d);
       end;
     close(v);
     close(z);
     reset(x);
     rewrite(v);
     while not eof(x) do
       begin
         read(x,d);
         write(v,d);
       end;
     close(x);
     close(v);
     erase(x);
    end.