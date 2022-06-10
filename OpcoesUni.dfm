object OpcoesForm: TOpcoesForm
  Left = 158
  Top = 164
  BorderStyle = bsDialog
  Caption = 'Op'#231#245'es'
  ClientHeight = 222
  ClientWidth = 347
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 95
    Height = 13
    Caption = 'Diret'#243'rio de trabalho'
  end
  object DE1: TDirectoryEdit
    Left = 16
    Top = 32
    Width = 313
    Height = 21
    DirectInput = False
    NumGlyphs = 1
    TabOrder = 0
  end
  object BitBtn1: TBitBtn
    Left = 56
    Top = 128
    Width = 75
    Height = 25
    TabOrder = 1
    Kind = bkOK
  end
  object BitBtn2: TBitBtn
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
end
