program mc;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var q: array[1..150] of LongWord;
  a,b,c,p,kv,kn: LongWord;

begin
  Readln(p);   kv:=0; kn:=0;
  for a:=p downto 1 do
  for b:=p-a downto 1 do
  begin
    c:=p-a-b;
    if (a<(b+c)) and (b<(c+a)) and (c<(b+a)) then
    begin
      inc(kv);


    end;

  end;
  Writeln(kv);
  Readln;
end.
 