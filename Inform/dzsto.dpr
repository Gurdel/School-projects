program dzsto;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x,q,w,e,r: Real;
begin
    Writeln('vvedit x');
       Readln(x);
       q:=1/(x+3);
       w:=1/(x*x-2*x-10);
       e:=(x-5)/(x*x*x+x-2);
       r:=(x*x*x*x)/(x*x*x*x*x+x*x*x+x+1);
       Writeln('1=',q:8:4);
       Writeln('2=',w:8:4);
       Writeln('3=',e:8:4);
       Writeln('4=',r:8:4);
             readln;


end.
 