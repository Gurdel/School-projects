program kvadratne;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,c,v: Integer;
       d,o,w,e: Real;
begin
  Writeln('znaidemo koreni kvadratnogo rivnyannya ax^2+bx+c=0');
  Writeln('vvedit a');
       Readln(a);
  Writeln('vvedit b');
         Readln(b);
  Writeln('vvedit c');
          Readln(c);
          d:=Sqr(b)-4*a*b;
             if d<0 then Writeln('nemae roznyazkiv');
             if d=0 then o:=-b*(2*a)   ;
            Writeln('x=',o:8:4);
             if d>0 then w:=(-b-sqrt(d))/(2*a)  ;
                           e:=(-b+sqrt(d))/(2*a)  ;
             Writeln('x1=',w:8:4) ;
             Writeln('x2=',e:8:4);
               Readln(v);
      
















end.
