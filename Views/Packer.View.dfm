object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 262
  ClientWidth = 508
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
    Left = 40
    Top = 168
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object ProgressBar1: TProgressBar
    Left = 40
    Top = 200
    Width = 425
    Height = 17
    TabOrder = 0
  end
  object Button1: TButton
    Left = 40
    Top = 128
    Width = 153
    Height = 25
    Caption = 'Packer with patterns'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 64
    Width = 153
    Height = 25
    Caption = 'UnPacker with patterns'
    TabOrder = 2
    OnClick = Button2Click
  end
end
