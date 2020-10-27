unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var a,i: integer;
begin
a:=1;
{for i:=1 to 999 do
begin
     a:=a+1;  }

  form1.Image1.Canvas.MoveTo(10+a,120);
  form1.Image1.Canvas.LineTo(10+a,140);
  form1.Image1.Canvas.LineTo(190+a,140);
  form1.Image1.Canvas.LineTo(220+a,110);
  form1.Image1.Canvas.LineTo(130+a,110);
  form1.Image1.Canvas.LineTo(120+a,120);
  form1.Image1.Canvas.LineTo(10+a,120);
  form1.Image1.Canvas.LineTo(120+a,10);
  form1.Image1.Canvas.LineTo(220+a,110);
  form1.Image1.Canvas.MoveTo(40+a,120);
  form1.Image1.Canvas.LineTo(50+a,110);
  form1.Image1.Canvas.LineTo(50+a,100);
  form1.Image1.Canvas.LineTo(190+a,100);
  form1.Image1.Canvas.LineTo(190+a,110);
  form1.Image1.Canvas.MoveTo(90+a,100);
  form1.Image1.Canvas.LineTo(90+a,50);
  form1.Image1.Canvas.LineTo(100+a,50);
  form1.Image1.Canvas.LineTo(100+a,100);
  form1.Image1.Canvas.MoveTo(100+a,90);
  form1.Image1.Canvas.LineTo(140+a,90);
  form1.Image1.Canvas.LineTo(140+a,100);
  form1.Image1.Canvas.MoveTo(120+a,10);
  form1.Image1.Canvas.LineTo(120+a,90);
  form1.Image1.Canvas.MoveTo(60+a,110);
  form1.Image1.Canvas.LineTo(110+a,110);
  form1.Image1.Canvas.Ellipse(140+a,120,150+a,130);
  form1.Image1.Canvas.Ellipse(170+a,120,180+a,130);
 // Form1.Image1.Canvas.Rectangle(0,0,809,409);
 //  end;
end;

end.
