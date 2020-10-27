unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    img: TImage;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    btn8: TButton;
    btn9: TButton;
    btn10: TButton;
    tmr: TTimer;
    btn11: TButton;
    btn12: TButton;
    btn13: TButton;
    btn14: TButton;
    btn15: TButton;
    edt: TEdit;
    btn16: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure edtChange(Sender: TObject);
    procedure btn16Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btn14Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btn15Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure tmrTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Score,UndScor: LongWord;
  Start: Boolean;
  Pole: array[1..10,1..10,1..2] of Byte;
  Undo: array[1..10,1..10] of Byte;
  Auto: array[1..20] of Byte;
  Size, CSize, NAuto, TAuto: Byte;
  Form1: TForm1;

implementation

{$R *.dfm}
procedure Refresh();
var x,y: Byte;
begin
  for x:=1 to Size do
  for y:=1 to Size do
  Pole[x,y,2]:=1;
end;

procedure Up();
var x,y,i: Byte;
begin
  for i:=1 to size-1 do
  begin
    for y:=2 to Size do
    for x:=1 to Size do
    begin
      if (Pole[x,y,1]<>0) and (Pole[x,y-1,1]=0) then
      begin
        Pole[x,y-1,1]:=Pole[x,y,1];
        Pole[x,y,1]:=0;
      end
        else
      if (Pole[x,y,1]<>0) and (Pole[x,y-1,1]=Pole[x,y,1]) and (Pole[x,y-1,2]=1) and (Pole[x,y,2]=1) then
      begin
        Pole[x,y-1,1]:=Pole[x,y-1,1]+1;
        Pole[x,y-1,2]:=2;
        Pole[x,y,1]:=0;
      end;
    end;
  end;
  Refresh;
end;

procedure Down();
var x,y,i: Byte;
begin
  for i:=1 to size-1 do
  begin
    for y:=Size-1 downto 1 do
    for x:=1 to Size do
    begin
      if (Pole[x,y,1]<>0) and (Pole[x,y+1,1]=0) then
      begin
        Pole[x,y+1,1]:=Pole[x,y,1];
        Pole[x,y,1]:=0;
      end
        else
      if (Pole[x,y,1]<>0) and (Pole[x,y+1,1]=Pole[x,y,1]) and (Pole[x,y+1,2]=1) and (Pole[x,y,2]=1) then
      begin
        Pole[x,y+1,1]:=Pole[x,y+1,1]+1;
        Pole[x,y+1,2]:=2;
        Pole[x,y,1]:=0;
      end;
    end;
  end;
  Refresh;
end;

procedure Lefti();
var x,y,i: Byte;
begin
  for i:=1 to size-1 do
  begin
    for x:=2 to Size do
    for y:=1 to Size do
    begin
      if (Pole[x,y,1]<>0) and (Pole[x-1,y,1]=0) then
      begin
        Pole[x-1,y,1]:=Pole[x,y,1];
        Pole[x,y,1]:=0;
      end
        else
      if (Pole[x,y,1]<>0) and (Pole[x-1,y,1]=Pole[x,y,1]) and (Pole[x-1,y,2]=1) and (Pole[x,y,2]=1) then
      begin
        Pole[x-1,y,1]:=Pole[x-1,y,1]+1;
        Pole[x-1,y,2]:=2;
        Pole[x,y,1]:=0;
      end;
    end;
  end;
  Refresh;
end;

procedure Right();
var x,y,i: Byte;
begin
  for i:=1 to size-1 do
  begin
    for x:=Size-1 downto 1 do
    for y:=1 to Size do
    begin
      if (Pole[x,y,1]<>0) and (Pole[x+1,y,1]=0) then
      begin
        Pole[x+1,y,1]:=Pole[x,y,1];
        Pole[x,y,1]:=0;
      end
        else
      if (Pole[x,y,1]<>0) and (Pole[x+1,y,1]=Pole[x,y,1]) and (Pole[x+1,y,2]=1) and (Pole[x,y,2]=1) then
      begin
        Pole[x+1,y,1]:=Pole[x+1,y,1]+1;
        Pole[x+1,y,2]:=2;
        Pole[x,y,1]:=0;
      end;
    end;
  end;
  Refresh;
end;

procedure visual();
var x,y: Byte;
    k:LongWord;
begin
  for x:=1 to Size do
  for y:=1 to Size do
  begin
    k:=15000*pole[x,y,1]+50000;
    case Pole[x,y,1] of
    0: begin Form1.img.Canvas.Brush.Color:=clWhite; end;
    1: begin Form1.img.Canvas.Brush.Color:=k; end;
    2: begin Form1.img.Canvas.Brush.Color:=k; end;
    3: begin Form1.img.Canvas.Brush.Color:=k; end;
    4: begin Form1.img.Canvas.Brush.Color:=k; end;
    5: begin Form1.img.Canvas.Brush.Color:=k; end;
    6: begin Form1.img.Canvas.Brush.Color:=k; end;
    7: begin Form1.img.Canvas.Brush.Color:=k; end;
    8: begin Form1.img.Canvas.Brush.Color:=k; end;
    9: begin Form1.img.Canvas.Brush.Color:=k; end;
    10: begin Form1.img.Canvas.Brush.Color:=k; end;
    11: begin Form1.img.Canvas.Brush.Color:=k; end;
    12: begin Form1.img.Canvas.Brush.Color:=k; end;
    13: begin Form1.img.Canvas.Brush.Color:=k; end;
    14: begin Form1.img.Canvas.Brush.Color:=k; end;
    15: begin Form1.img.Canvas.Brush.Color:=k; end;
    16: begin Form1.img.Canvas.Brush.Color:=k; end;
    17: begin Form1.img.Canvas.Brush.Color:=k; end;
    18: begin Form1.img.Canvas.Brush.Color:=k; end;
    19: begin Form1.img.Canvas.Brush.Color:=k; end;
    20: begin Form1.img.Canvas.Brush.Color:=k; end;
    21: begin Form1.img.Canvas.Brush.Color:=k; end;
    else begin Form1.img.Canvas.Brush.Color:=80000000; end;
    end;
    Form1.img.Canvas.Rectangle((x-1)*40,(y-1)*40,x*40,y*40);
    Form1.img.Canvas.TextOut((x-1)*40+5,(y-1)*40+5,IntToStr(pole[x,y,1]));
  end;
end;

procedure und();
var x,y: Byte;
begin
  UndScor:=Score;
  for x:=1 to Size do
  for y:=1 to Size do
  Undo[x,y]:=pole[x,y,1];
end;

procedure DoUndo();
var x,y: Byte;
begin
  for x:=1 to Size do
  for y:=1 to Size do
  Pole[x,y,1]:=Undo[x,y];
  Score:=UndScor;
  visual;
end;

function LosePerev():Boolean;
var i,j: Byte;
ans: Boolean;
begin
  ans:=False;
  for i:=1 to Size do
  for j:=1 to Size do
  if Pole[i,j,1]=0 then ans:=True;
  LosePerev:=ans;
end;

function lose():Boolean;
var i,j: Byte;
ansver: Boolean;
begin
  ansver:=True;
  Up;
  if LosePerev then ansver:=False;
  DoUndo;
  right;
  if LosePerev then ansver:=False;
  DoUndo;
  down;
  if LosePerev then ansver:=False;
  DoUndo;
  lefti;
  if LosePerev then ansver:=False;
  DoUndo;
  lose:=ansver;
end;

procedure Rand();
var x,y,F: Byte;
    t: Boolean;
begin
   t:= True;
   F:=0;
   Randomize;
   while (t) and (F<10) do
   begin
     inc(f);
     x:=Random(Size)+1;
     y:=Random(Size)+1;
     if Pole[x,y,1] = 0 then
      begin
        if Random(10) < 6 then Pole[x,y,1]:=1
                            else Pole[x,y,1]:=2;
        t:= False;
      end;
   end;

   if t then
   begin
     for x:=1 to Size do
     for y:=1 to Size do
     if Pole[x,y,1]=0 then
     begin
          if (Random(10) < 6) and (t) then begin Pole[x,y,1]:=1; t:= False; end
                            else begin Pole[x,y,1]:=2; t:=False; end;
     end;
   end;

   if t then
   begin
    if Lose then
    begin
    ShowMessage('You lose :( Your score:'';');
    for x:=1 to Size do
    for y:=1 to Size do
    Pole[x,y,1]:=0;
    Score:=0;
    Refresh;
    visual;
    Form1.btn7.Enabled:=False;
    Form1.btn8.Enabled:=False;
    Form1.btn9.Enabled:=False;
    Form1.btn10.Enabled:=False;
     end;
   end;
end;

procedure TForm1.FormCreate(Sender: TObject);
var s: string;
begin
  Form1.img.Canvas.Brush.Color:=clPurple;
  Form1.img.Canvas.Pen.Color:=11000000;
  Form1.img.Canvas.Pen.Width:=2;
  CSize:=4;
  NAuto:=4;
  Auto[1]:=1;
  Auto[2]:=2;
  Auto[3]:=3;
  Auto[4]:=4;
  s:='Size = ';
  s:=s+inttostr(CSize);
  Form1.lbl1.Caption:=s;
  Start:=False;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Start then
  begin
  und;
  if Key = 87 then Up;
  if Key = 83 then Down;
  if Key = 65 then Lefti;
  if Key = 68 then Right;

  Rand;
  visual;
  end;
end;

procedure TForm1.btn5Click(Sender: TObject);
  var s: string;
begin
  if CSize < 10 then Inc(CSize);
  s:='Size = ';
  s:=s+inttostr(CSize);
  Form1.lbl1.Caption:=s;
end;

procedure TForm1.btn6Click(Sender: TObject);
  var s: string;
begin
  if CSize>2 then CSize:=CSize-1;
  s:='Size = ';
  s:=s+inttostr(CSize);
  Form1.lbl1.Caption:=s;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  und;
  Up;
  Rand;
  visual;
end;

procedure TForm1.btn8Click(Sender: TObject);
begin
  und;
  Down;
  Rand;
  visual;
end;

procedure TForm1.btn9Click(Sender: TObject);
begin
  und;
  Lefti;
  Rand;
  visual;
end;

procedure TForm1.btn10Click(Sender: TObject);
begin
  und;
  Right;
  Rand;
  visual;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  DoUndo;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Size:=CSize;
  Rand;
  Rand;
  und;
  Refresh;
  score:=0;
  UndScor:=0;
  Start:=True;
  visual;
  Form1.btn7.Enabled:=True;
  Form1.btn8.Enabled:=True;
  Form1.btn9.Enabled:=True;
  Form1.btn10.Enabled:=True;
  Up;
  DoUndo;
end;

procedure TForm1.edtChange(Sender: TObject);
var s: string;
a,i: Byte;
begin
  s:=Form1.edt.text;
  a:=Length(s);
  for i:=a downto 1 do
  begin
    case s[i] of
      '1','2','3','4','5','6','7','8','9','0': ;
      else Delete(s,i,1);
    end;
  end;
  Form1.edt.Text:=s;
end;

procedure TForm1.btn16Click(Sender: TObject);
var a: LongWord;
begin
   a:=StrToInt(Form1.edt.Text);
   Form1.tmr.Interval:=a;
end;

procedure TForm1.btn11Click(Sender: TObject);
var s: string;
i: Byte;
begin
  if NAuto<20 then
  begin
    inc(NAuto);
    Auto[NAuto]:=1;
  end;
  for i:=1 to NAuto do
  case Auto[i] of
  1: s:=s+'Up ';
  2: s:=s+'Right ';
  3: s:=s+'Down ';
  4: s:=s+'Left ';
  else;
  end;
  Form1.lbl3.Caption:=s;
end;

procedure TForm1.btn14Click(Sender: TObject);
var s: string;
i: Byte;
begin
   if NAuto<20 then
  begin
    inc(NAuto);
    Auto[NAuto]:=2;
  end;
    for i:=1 to NAuto do
  case Auto[i] of
  1: s:=s+'Up ';
  2: s:=s+'Right ';
  3: s:=s+'Down ';
  4: s:=s+'Left ';
  else;
  end;
   Form1.lbl3.Caption:=s;
end;

procedure TForm1.btn12Click(Sender: TObject);
var s: string;
i: Byte;
begin
    if NAuto<20 then
  begin
    inc(NAuto);
    Auto[NAuto]:=3;
  end;
    for i:=1 to NAuto do
  case Auto[i] of
  1: s:=s+'Up ';
  2: s:=s+'Right ';
  3: s:=s+'Down ';
  4: s:=s+'Left ';
  else;
  end;
  Form1.lbl3.Caption:=s;
end;

procedure TForm1.btn13Click(Sender: TObject);
var s: string;
i: Byte;
begin
   if NAuto<20 then
  begin
    inc(NAuto);
    Auto[NAuto]:=4;
  end;
    for i:=1 to NAuto do
  case Auto[i] of
  1: s:=s+'Up ';
  2: s:=s+'Right ';
  3: s:=s+'Down ';
  4: s:=s+'Left ';
  else;
  end;
  Form1.lbl3.Caption:=s;
end;

procedure TForm1.btn15Click(Sender: TObject);
var s: string;
i: Byte;
begin
  if NAuto>0 then NAuto:=NAuto-1;
   for i:=1 to NAuto do
  case Auto[i] of
  1: s:=s+'Up ';
  2: s:=s+'Right ';
  3: s:=s+'Down ';
  4: s:=s+'Left ';
  else;
  end;
  Form1.lbl3.Caption:=s;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
  if Form1.tmr.Enabled=true then
   Form1.tmr.Enabled:=False
   else
   Form1.tmr.Enabled:=True;
   TAuto:=0;
end;

procedure TForm1.tmrTimer(Sender: TObject);
begin
  und;
    if TAuto<NAuto then inc(TAuto)  else
            TAuto:=1;
    case Auto[TAuto] of
    1: Up;
    2: Right;
    3: down;
    4: Lefti;
    else ;
    end;
    Rand;
    visual;
end;

end.
