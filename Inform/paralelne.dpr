program paralelne;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var q,w,e,r: LongWord;
  x,z: Real;

begin
  Writeln('rozrahuemo opir na elektrychnomu koli pry paralelnomu zyednani rezistoriv');
 writeln('vvedit R1');
  Readln(q);
  writeln('vvedit R2');
  Readln(w);
  writeln('vvedit R3');
  Readln(e);
  writeln('vvedit R4');
  Readln(r);
  x:=1/q+1/w+1/e+1/r;
  z:=1/x;
  Writeln('opir na koli=',z:8:2);
  Readln
end.
