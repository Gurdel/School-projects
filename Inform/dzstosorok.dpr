program dzstosorok;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x,a,s,d,f,g: Real;
begin
      Writeln('vvedit x');
            Readln(x);

          Writeln('I.');
            if (x>-2) and (x<2) then a:=x*x
                                  else a:=10;
                   Writeln('F1(x)=',a:8:4);
          Writeln('II.');
                if (x<=2) then s:=Sin(x)+sqrt(x*x)
                                  else s:=(x*x+5)/2;
                    Writeln('F2(x)=',s:8:4);
          Writeln('III.');
                 if (x>0) then d:=x*x+5*x-6
                                  else d:=Sqrt(Sqr(x+cos(x)));
                     Writeln('F3(x)=',d:8:4);
          Writeln('IV.');
                   if (x<0) then f:=x*x+4*x+5
                                  else f:=1/(x*x+4*x+5);
                     Writeln('F4(x)=',f:8:4);
          Writeln('V.');
                    if (x<-10) then g:=3*x*x*x-x*x;
                    if (x>=-10) and (x<=10) then g:=Sqrt(10-x);
                    if (x>10) then g:=2*x+1;
                      Writeln('F5(x)=',g:8:4);

                                    Readln;








end.
