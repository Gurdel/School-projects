program poslidovne;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var q,w,e,r,z: LongWord;

begin
  Writeln('rozrahuemo opir na elektrychnomu koli pry poslidovnomu zyednani rezistoriv');
  writeln('vvedit R1');
  Readln(q);
  writeln('vvedit R2');
  Readln(w);
  writeln('vvedit R3');
  Readln(e);
  writeln('vvedit R4');
  Readln(r);
  z:=q+w+e+r;
  Writeln('opir na koli=',z);
  Readln;
end.
