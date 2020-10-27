program dzstodevyatnadsat;

{$APPTYPE CONSOLE}

uses
  SysUtils;
   var x,a,b,c,q: Real;
begin
   Writeln('vvedit rozmir sumy S');
            Readln(x);
   Writeln('vvedit a');
            Readln(a);
   Writeln('vvedit b');
            Readln(b);
   Writeln('vvedit c');
            Readln(c);

            if x<=a then q:=x*0;
            if (x>a) and (x<=b) then q:=x/100*10;
            if (x>b) and (x<=c) then q:=x/100*25;
            if (x>c) then q:=x/100*50;
          Writeln('podatok=',q:8:4);

                        Readln;









end.
 