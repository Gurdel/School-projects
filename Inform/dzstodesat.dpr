program dzstodesat;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var a,b,c,x,y: Integer;
begin
    Writeln('vvedit x');
            Readln(x);
    Writeln('vvedit y');
            Readln(y);
    Writeln('vvedit a');
            Readln(a);
    Writeln('vvedit b');
            Readln(b);
   Writeln('vvedit c');
            Readln(c);


            if (x<a) and (a<y) then Writeln('a potraplya')
                             else Writeln('a ne potraplya') ;

            if (x<b) and (b<y) then Writeln('b potraplya')
                             else Writeln('b ne potraplya') ;

            if (x<c) and (c<y) then Writeln('c potraplya')
                             else Writeln('c ne potraplya') ;

                             readln;





end.
 