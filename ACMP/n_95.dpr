program n_95;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function sum(a:LongWord):LongWord;
var a1: LongWord;
begin
  a1:=0;
  while a>0 do
  begin
    a1:=a1+(a mod 10);
    a:=a div 10;
  end;
   sum:=a1;
end;

 var z: TextFile;
 n,k: LongWord;

begin
    AssignFile(z,'input.txt');
    Reset(z);
    Readln(z,n);
    CloseFile(z);
    k:=0;
          while n>9 do
          begin
            inc(k);
            n:=sum(n);
          end;


     AssignFile(z,'output.txt');
     Rewrite(z);
     Writeln(z,n,' ',k);
     CloseFile(z);
end.
