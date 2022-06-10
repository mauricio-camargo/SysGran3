object ConfigGrafForm: TConfigGrafForm
  Left = 416
  Top = 100
  Width = 451
  Height = 397
  Caption = 'Configurar gr'#225'fico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 443
    Height = 329
    ActivePage = TabSheet1
    Align = alTop
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Geral'
      object CB3D: TCheckBox
        Left = 24
        Top = 16
        Width = 97
        Height = 17
        Caption = 'Gr'#225'fico 3D'
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 56
        Width = 409
        Height = 105
        Caption = 'T'#237'tulo'
        TabOrder = 1
        object Button1: TButton
          Left = 142
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Fonte'
          TabOrder = 0
          OnClick = Button1Click
        end
        object CBTitulo: TCheckBox
          Left = 49
          Top = 76
          Width = 65
          Height = 17
          Caption = 'Vis'#237'vel'
          TabOrder = 1
        end
        object Edit1: TEdit
          Left = 48
          Top = 24
          Width = 345
          Height = 21
          TabOrder = 2
        end
        object Button2: TButton
          Left = 270
          Top = 72
          Width = 75
          Height = 25
          Caption = 'Cor de fundo'
          TabOrder = 3
          OnClick = Button2Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 16
        Top = 168
        Width = 409
        Height = 129
        Caption = 'Cores'
        TabOrder = 2
        object Panel1: TPanel
          Left = 125
          Top = 31
          Width = 185
          Height = 18
          TabOrder = 0
        end
        object Button3: TButton
          Left = 8
          Top = 26
          Width = 97
          Height = 25
          Caption = 'Cor do gr'#225'fico'
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 8
          Top = 58
          Width = 97
          Height = 25
          Caption = 'Cor de fundo'
          TabOrder = 2
          OnClick = Button4Click
        end
        object Panel2: TPanel
          Left = 125
          Top = 63
          Width = 185
          Height = 18
          TabOrder = 3
        end
        object Button7: TButton
          Left = 8
          Top = 90
          Width = 97
          Height = 25
          Caption = 'Cor da(s) s'#233'rie(s)'
          TabOrder = 4
          OnClick = Button7Click
        end
        object Panel6: TPanel
          Left = 125
          Top = 95
          Width = 185
          Height = 18
          TabOrder = 5
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Eixo X'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 16
        Top = 16
        Width = 449
        Height = 113
        Caption = 'Escala'
        TabOrder = 0
        object Label11: TLabel
          Left = 152
          Top = 35
          Width = 35
          Height = 13
          Caption = 'M'#237'nimo'
          Enabled = False
        end
        object Label12: TLabel
          Left = 152
          Top = 86
          Width = 36
          Height = 13
          Caption = 'M'#225'ximo'
          Enabled = False
        end
        object CBX: TCheckBox
          Left = 16
          Top = 32
          Width = 129
          Height = 17
          Caption = 'Escala autom'#225'tica'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CBXClick
        end
        object SKMinX: TSKEdit
          Left = 192
          Top = 31
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 1
          Text = '0'
        end
        object SKMaxX: TSKEdit
          Left = 192
          Top = 82
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '0'
        end
        object BtnFonteEixoX: TBitBtn
          Left = 317
          Top = 52
          Width = 95
          Height = 25
          Caption = 'Fonte do eixo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BtnFonteEixoXClick
        end
      end
      object GroupBox4: TGroupBox
        Left = 16
        Top = 144
        Width = 449
        Height = 97
        Caption = 'T'#237'tulo'
        TabOrder = 1
        object EditTituloX: TEdit
          Left = 16
          Top = 24
          Width = 409
          Height = 21
          TabOrder = 0
        end
        object BtnFonteTituloX: TBitBtn
          Left = 192
          Top = 65
          Width = 113
          Height = 25
          Caption = 'Fonte do t'#237'tulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnFonteTituloXClick
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Eixo Y'
      ImageIndex = 3
      object GroupBox5: TGroupBox
        Left = 16
        Top = 16
        Width = 449
        Height = 113
        Caption = 'Escala'
        TabOrder = 0
        object Label1: TLabel
          Left = 152
          Top = 35
          Width = 35
          Height = 13
          Caption = 'M'#237'nimo'
          Enabled = False
        end
        object Label2: TLabel
          Left = 152
          Top = 86
          Width = 36
          Height = 13
          Caption = 'M'#225'ximo'
          Enabled = False
        end
        object CBY: TCheckBox
          Left = 16
          Top = 32
          Width = 129
          Height = 17
          Caption = 'Escala autom'#225'tica'
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CBYClick
        end
        object SKMinY: TSKEdit
          Left = 192
          Top = 31
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 1
          Text = '0'
        end
        object SKMaxY: TSKEdit
          Left = 192
          Top = 82
          Width = 105
          Height = 21
          Enabled = False
          TabOrder = 2
          Text = '0'
        end
        object BtnFonteEixoY: TBitBtn
          Left = 317
          Top = 52
          Width = 95
          Height = 25
          Caption = 'Fonte do eixo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = BtnFonteEixoYClick
        end
      end
      object GroupBox6: TGroupBox
        Left = 16
        Top = 144
        Width = 449
        Height = 97
        Caption = 'T'#237'tulo'
        TabOrder = 1
        object EditTituloY: TEdit
          Left = 16
          Top = 24
          Width = 409
          Height = 21
          TabOrder = 0
        end
        object BtnFonteTituloY: TBitBtn
          Left = 192
          Top = 65
          Width = 113
          Height = 25
          Caption = 'Fonte do t'#237'tulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BtnFonteTituloYClick
        end
      end
    end
    object LegendaSheet: TTabSheet
      Caption = 'Legenda'
      ImageIndex = 4
      object Button5: TButton
        Left = 8
        Top = 67
        Width = 97
        Height = 25
        Caption = 'Cor da legenda'
        TabOrder = 0
        OnClick = Button5Click
      end
      object Panel3: TPanel
        Left = 125
        Top = 72
        Width = 185
        Height = 18
        TabOrder = 1
      end
      object Button6: TButton
        Left = 8
        Top = 138
        Width = 97
        Height = 25
        Caption = 'Fonte'
        TabOrder = 2
        OnClick = Button6Click
      end
      object Panel4: TPanel
        Left = 125
        Top = 124
        Width = 276
        Height = 53
        Caption = 'Fonte da legenda'
        TabOrder = 3
      end
      object CBLeg: TCheckBox
        Left = 17
        Top = 20
        Width = 65
        Height = 17
        Caption = 'Vis'#237'vel'
        TabOrder = 4
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 329
    Width = 443
    Height = 41
    Align = alClient
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 120
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 0
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 256
      Top = 8
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkCancel
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MinFontSize = 0
    MaxFontSize = 0
    Left = 136
    Top = 64
  end
  object ColorDialog1: TColorDialog
    Ctl3D = True
    Options = [cdSolidColor, cdAnyColor]
    Left = 184
    Top = 64
  end
end
