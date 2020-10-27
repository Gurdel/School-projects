object Form1: TForm1
  Left = 305
  Top = 226
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object img: TImage
    Left = 88
    Top = 32
    Width = 400
    Height = 400
  end
  object lbl1: TLabel
    Left = 688
    Top = 208
    Width = 16
    Height = 13
    Caption = 'lbl1'
  end
  object lbl2: TLabel
    Left = 160
    Top = 8
    Width = 16
    Height = 13
    Caption = 'lbl2'
  end
  object lbl3: TLabel
    Left = 776
    Top = 72
    Width = 16
    Height = 13
    Caption = 'lbl3'
  end
  object btn1: TButton
    Left = 520
    Top = 16
    Width = 113
    Height = 57
    Caption = 'START'
    TabOrder = 0
    TabStop = False
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 536
    Top = 104
    Width = 121
    Height = 49
    Caption = 'Undo'
    TabOrder = 1
    TabStop = False
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 536
    Top = 168
    Width = 121
    Height = 41
    Caption = 'Restart'
    TabOrder = 2
    TabStop = False
  end
  object btn4: TButton
    Left = 824
    Top = 24
    Width = 73
    Height = 41
    Caption = 'AUTO'
    TabOrder = 3
    TabStop = False
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 744
    Top = 144
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 4
    TabStop = False
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 744
    Top = 176
    Width = 25
    Height = 25
    Caption = '-'
    TabOrder = 5
    TabStop = False
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 576
    Top = 232
    Width = 49
    Height = 33
    Caption = 'btn7'
    Enabled = False
    TabOrder = 6
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 576
    Top = 272
    Width = 49
    Height = 33
    Caption = 'btn8'
    Enabled = False
    TabOrder = 7
    OnClick = btn8Click
  end
  object btn9: TButton
    Left = 528
    Top = 232
    Width = 41
    Height = 73
    Caption = 'btn9'
    Enabled = False
    TabOrder = 8
    OnClick = btn9Click
  end
  object btn10: TButton
    Left = 632
    Top = 232
    Width = 41
    Height = 73
    Caption = 'btn10'
    Enabled = False
    TabOrder = 9
    OnClick = btn10Click
  end
  object btn11: TButton
    Left = 808
    Top = 96
    Width = 41
    Height = 25
    Caption = 'btn11'
    TabOrder = 10
    OnClick = btn11Click
  end
  object btn12: TButton
    Left = 808
    Top = 128
    Width = 41
    Height = 25
    Caption = 'btn12'
    TabOrder = 11
    OnClick = btn12Click
  end
  object btn13: TButton
    Left = 752
    Top = 96
    Width = 49
    Height = 57
    Caption = 'btn13'
    TabOrder = 12
    OnClick = btn13Click
  end
  object btn14: TButton
    Left = 840
    Top = 96
    Width = 33
    Height = 57
    Caption = 'btn14'
    TabOrder = 13
    OnClick = btn14Click
  end
  object btn15: TButton
    Left = 864
    Top = 88
    Width = 41
    Height = 33
    Caption = 'btn15'
    TabOrder = 14
    OnClick = btn15Click
  end
  object edt: TEdit
    Left = 808
    Top = 176
    Width = 49
    Height = 21
    TabOrder = 15
    OnChange = edtChange
  end
  object btn16: TButton
    Left = 864
    Top = 176
    Width = 25
    Height = 25
    Caption = 'btn16'
    TabOrder = 16
    OnClick = btn16Click
  end
  object tmr: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrTimer
    Left = 768
    Top = 240
  end
end
