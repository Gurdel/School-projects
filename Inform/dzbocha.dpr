program dzbocha;

{$APPTYPE CONSOLE}

uses
  SysUtils;
 var x,y,z,a,b: Real;

begin
 Writeln('vvedit dovzinu Bochky x');
            Readln(x);
 Writeln('vvedit visotu Bochky y');
            Readln(y);
 Writeln('vvedit dal Bochky z');
            Readln(z);
 Writeln('vvedit visotu dverei a');
            Readln(a);
 Writeln('vvedit dovzinu dverei b');
            Readln(b);



            if (y<a) and (x<b) then Writeln('Bocha proide y/a i x/b');
            if (y<b) and (x<a) then Writeln('Bocha proide x/a i y/b');
                 if (y<a) and (z<b) then Writeln('Bocha proide y/a i z/b');
                 if (y<b) and (z<a) then Writeln('Bocha proide z/a i x/b');
                      if (z<a) and (x<b) then Writeln('Bocha proide z/a i x/b');
                      if (z<b) and (x<a) then Writeln('Bocha proide x/a i z/b');

                      if ((y<a) and (x<b)) or ((y<b) and (x<a)) or ((y<a) and (z<b)) or ((y<b) and (z<a))
                      or ((z<a) and (x<b)) or ((z<b) and (x<a)) then Writeln('')
                            else  Writeln('Bocha ne proide');
                        Readln;








end.
 