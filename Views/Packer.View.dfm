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
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 224
    Top = 24
    Width = 276
    Height = 113
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
end
