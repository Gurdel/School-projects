program dzstodevyat;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x,y,z: Real;
begin
        Writeln('vvedit x');
            Readln(x);
            Writeln('vvedit y');
            Readln(y);
            Writeln('vvedit z');
            Readln(z);
            if (x<y) and (y<z) then Writeln('e nespadnoyu')
                             else Writeln('ne e nespadnoyu') ;
                             Readln;







end.
 