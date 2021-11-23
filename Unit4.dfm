object Form4: TForm4
  Left = 278
  Top = 176
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form4'
  ClientHeight = 697
  ClientWidth = 1224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1224
    Height = 617
    Align = alTop
    DataSource = DataModule1.DataSTovari
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 608
    Width = 1224
    Height = 89
    Align = alBottom
    TabOrder = 1
    object Label1: TLabel
      Left = 304
      Top = 8
      Width = 165
      Height = 20
      Caption = #1042#1080' '#1086#1073#1088#1072#1083#1080' '#1090#1086#1074#1072#1088' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 648
      Top = 16
      Width = 146
      Height = 20
      Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1085#1072#1079#1074#1086#1102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 648
      Top = 56
      Width = 178
      Height = 20
      Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1082#1072#1090#1077#1075#1086#1088#1110#1108#1102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 16
      Top = 8
      Width = 129
      Height = 25
      Caption = #1054#1073#1088#1072#1090#1080
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 160
      Top = 8
      Width = 129
      Height = 25
      Caption = #1044#1086' '#1095#1077#1082#1091
      TabOrder = 1
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 840
      Top = 16
      Width = 169
      Height = 21
      TabOrder = 2
      OnChange = Edit1Change
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 840
      Top = 56
      Width = 169
      Height = 21
      KeyField = #1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
      ListField = #1053#1072#1079#1074#1072
      ListFieldIndex = 1
      ListSource = DataModule1.DataSKategoria
      TabOrder = 3
      OnClick = DBLookupComboBox1Click
    end
    object Button3: TButton
      Left = 1032
      Top = 40
      Width = 145
      Height = 25
      Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
      TabOrder = 4
      OnClick = Button3Click
    end
  end
end
