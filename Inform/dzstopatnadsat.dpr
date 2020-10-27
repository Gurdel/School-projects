program dzstopatnadsat;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var x,y,z,q,w,e,r: Real;
begin
Writeln('vvedit x');
            Readln(x);
Writeln('vvedit y');
            Readln(y);
Writeln('vvedit z');
            Readln(z);

            if (x>y) and (x>z) then q:=x;
             if (y>x) and (y>z) then q:=y;
               if (z>y) and (z>x) then q:=z;
          w:=x+q;
          e:=y+q;
          r:=z+q;
                  Writeln('nove x=',w:8:4);
                  Writeln('nove y=',e:8:4);
                  Writeln('nove z=',r:8:4);

                          Readln;











end.
 