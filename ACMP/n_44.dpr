program n_44;

{$APPTYPE CONSOLE}

uses
  SysUtils;
  var z: TextFile;
  s,s1: string;
  k,l,i: Byte;

begin
    AssignFile(z,'input.txt');
    Reset(z);
    Readln(z,s);
    CloseFile(z);
    k:=0;
      l:=Length(s);
      for i:=1 to l-4 do
      begin
        s1:=s1+s[i]+s[i+1]+s[i+2]+s[i+3]+s[i+4];
        if (s1='>>-->') or (s1='<--<<') then inc(k);
       Delete(s1,1,5);
      end;
     AssignFile(z,'output.txt');
     Rewrite(z);
     Writeln(z,k);
     CloseFile(z);
end.
