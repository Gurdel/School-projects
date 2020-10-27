program dzstoodinatsat;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,c: Integer;
   q,w: Real;
begin
     Writeln('vvedit a');
            Readln(a);
             Writeln('vvedit b');
            Readln(b);
             Writeln('vvedit c');
            Readln(c);
            q:=(a+b+c)/3;
            w:=Sqrt(a*b*c);
             if q>w then Writeln('arifmetichne bilshe')
                             else Writeln('geometrichne bilshe') ;
                             Readln;



end.
 