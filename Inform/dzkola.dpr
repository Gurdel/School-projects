program dzkola;

{$APPTYPE CONSOLE}

uses
  SysUtils;
    var q,a,w,s,e,d,z,l: Real;
begin
     Writeln('vvedit x1');
        Readln(q);
     Writeln('vvedit y1');
        Readln(a);
     Writeln('vvedit x2');
        Readln(w);
     Writeln('vvedit y2');
        Readln(s);
     Writeln('vvedit r1');
        Readln(e);
     Writeln('vvedit r2');
        Readln(d);

        l:=Sqrt((q-a)*(q-a)+(w-s)*(w-s));
        z:=e+d;

                if l<z then Writeln('2 tochki');
                if l=z then Writeln('1 tochka');
                if l>z then Writeln('0 tochok');
                if (l=0) and (e=d) then Writeln('bezkinechnist tochok');







             Readln;

end.
 