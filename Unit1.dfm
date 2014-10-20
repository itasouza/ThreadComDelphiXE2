object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 398
  ClientWidth = 352
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 110
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 176
    Top = 72
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Button1: TButton
    Left = 110
    Top = 29
    Width = 114
    Height = 25
    Caption = 'Usando Thread '
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 110
    Top = 101
    Width = 139
    Height = 25
    Caption = 'Usando Thread externa'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 29
    Top = 144
    Width = 315
    Height = 113
    TabOrder = 2
  end
end
