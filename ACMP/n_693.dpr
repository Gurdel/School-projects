program n_693;

{$APPTYPE CONSOLE}

uses
  SysUtils;


 var z,f: TextFile;
 s1,s2: string;
 n,i,t,q: byte;

begin
    t:=1;
    AssignFile(z,'input.txt');
    Reset(z);
    Readln(z,s1);
    CloseFile(z);
    n:=Pos(' ',s1);
    for i:=1 to n do
    s2:=s2+s1[i];
    Delete(s1,1,n);

  n:=Length(s1);
  for i:=1 to n do
  begin
    q:=Pos(s1[i],s2);
    if q<>0 then
    Delete(s2,q,1)
    else
    t:=0;
  end;

    AssignFile(z,'output.txt');
    Rewrite(z);
    if (s2=' ') and (t=1) then Writeln(z,'Yes') else Writeln(z,'No');
    CloseFile(z);

end.
