program olimp;

{$APPTYPE CONSOLE}

uses
  SysUtils;
  const nz=0; kz=10000;
  type masuve=array[nz..kz] of Real;
  var i,n: LongWord;
             a:masuve;
function suma(q:LongWord):LongWord;
  var s: LongWord;
     begin
       s:=0;
       while q>0 do
       begin
         s:=s+(q mod 10);
         q:=q div 10;
       end;
       suma:=s;
     end;

  function zbig(d:Real;  n:LongWord):LongWord;
  var k,o:LongWord;
  begin
    k:=0;
     for o:=0 to n do
     begin
       if d=a[o] then inc(k);
     end;
     zbig:=k;
  end;

begin
  n:=1;
  for i:=1 to 599999 do
  begin
    write(i,') ',suma(2*i),'/',suma(i),'   ');
    Writeln((suma(2*i)/suma(i)):8:2);
    if zbig(suma(2*i)/suma(i),n)=0 then
    begin
      Inc(n);
      a[n]:=suma(2*i)/suma(i);
    end;
  end;
  Writeln('////////////////////////');
  for i:=1 to n do
  write(a[i]:3:2,' ');
  Readln;
end.
 