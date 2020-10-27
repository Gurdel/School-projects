program period;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var q,z: Real;
  l: LongWord;

begin
 Writeln('rozrahuemo period kolyvan matematychnogo mayatnyka');
 Writeln('vvedit dovzynu nytky');
 Readln(l);
 q:=l/9.8;
 z:=6.28*q;
 Writeln('period=',z:8:2);
 Readln;
end.
