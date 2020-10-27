program zarplata;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var q: LongWord;
       z: Real;

begin
  Writeln('rozrahuemo zarplatu yakogos muzhyka');
  Writeln('vvedit, skilki groshei narahovano muzhyku bez podatku');
  Readln(q);
  z:=q/100*80;
  Writeln('oderzhana platnya=',z:8:2);
  Readln;
end.
 