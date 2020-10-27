program n_691;

{$APPTYPE CONSOLE}

uses
  SysUtils;


 var z,f: TextFile;
 s: string;
 n,i: byte;

begin

   AssignFile(f,'output.txt');
     Rewrite(f);

    AssignFile(z,'input.txt');
    Reset(z);
    Readln(z,n);
    for i:=1 to n do
    begin
       Readln(z,s);
        if ((s[1]='A') or (s[1]='B') or (s[1]='C') or (s[1]='E') or (s[1]='H') or
        (s[1]='K') or (s[1]='M') or (s[1]='O') or (s[1]='P') or (s[1]='T') or (s[1]='X') or (s[1]='Y'))
         and
        ((s[5]='A') or (s[5]='B') or (s[5]='C') or (s[5]='E') or (s[5]='H') or (s[5]='K') or (s[5]='M') or (s[5]='O')
         or (s[5]='P') or (s[5]='T') or (s[5]='X') or (s[5]='Y'))
         and
         ((s[6]='A') or (s[6]='B') or (s[6]='C') or (s[6]='E') or (s[6]='H') or (s[6]='K') or (s[6]='M') or (s[6]='O')
          or (s[6]='P') or (s[6]='T') or (s[6]='X') or (s[6]='Y'))
         and
         ((s[2]='0') or (s[2]='1') or (s[2]='2') or (s[2]='3') or (s[2]='4') or (s[2]='5') or (s[2]='6') or (s[2]='7') or (s[2]='8') or (s[2]='9'))
         and
         ((s[3]='0') or (s[3]='1') or (s[3]='2') or (s[3]='3') or (s[3]='4') or (s[3]='5') or (s[3]='6') or (s[3]='7') or (s[3]='8') or (s[3]='9'))
         and
         ((s[4]='0') or (s[4]='1') or (s[4]='2') or (s[4]='3') or (s[4]='4') or (s[4]='5') or (s[4]='6') or (s[4]='7') or (s[4]='8') or (s[4]='9'))
       then
        Writeln(f,'Yes')
        else Writeln(f,'No');

    end;
    CloseFile(z);
     CloseFile(f);



end.
