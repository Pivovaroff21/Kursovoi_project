object Form3: TForm3
  Left = 243
  Top = 183
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1076#1091#1082#1090#1086#1074#1080#1081' '#1084#1072#1075#1072#1079#1080#1085
  ClientHeight = 685
  ClientWidth = 1228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 982
    Top = 0
    Width = 246
    Height = 685
    Align = alRight
    TabOrder = 0
    object Label6: TLabel
      Left = 24
      Top = 88
      Width = 26
      Height = 13
      Caption = #1044#1072#1090#1072
    end
    object Label7: TLabel
      Left = 24
      Top = 24
      Width = 64
      Height = 13
      Caption = #1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082
    end
    object Label8: TLabel
      Left = 24
      Top = 184
      Width = 62
      Height = 24
      Caption = #1063#1077#1082' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 1
      Top = 248
      Width = 244
      Height = 436
      Align = alBottom
      Enabled = False
      TabOrder = 0
      object Label3: TLabel
        Left = 24
        Top = 8
        Width = 193
        Height = 81
        Alignment = taCenter
        AutoSize = False
        Caption = #1054#1073#1077#1088#1110#1090#1100' '#1087#1086#1090#1088#1110#1073#1085#1080#1081' '#1090#1086#1074#1072#1088' '#1110#1079' '#1090#1072#1073#1083#1080#1094#1110' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object Label4: TLabel
        Left = 32
        Top = 104
        Width = 46
        Height = 13
        Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100
      end
      object Label5: TLabel
        Left = 8
        Top = 400
        Width = 149
        Height = 16
        Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1095#1077#1082#1091'('#1075#1088#1085'):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 8
        Top = 288
        Width = 141
        Height = 16
        Caption = #1057#1091#1084#1074' '#1087#1088#1086#1076#1072#1078#1110'('#1075#1088#1085'):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 32
        Top = 128
        Width = 185
        Height = 21
        TabOrder = 0
        Text = '0'
        OnChange = Edit2Change
      end
      object Button2: TButton
        Left = 40
        Top = 168
        Width = 169
        Height = 25
        Caption = #1044#1086#1076#1072#1090#1080' '
        Enabled = False
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 40
        Top = 320
        Width = 169
        Height = 25
        Caption = #1056#1086#1079#1076#1088#1091#1082#1091#1074#1072#1090#1080' '#1095#1077#1082
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 40
        Top = 360
        Width = 169
        Height = 25
        Caption = #1047#1072#1082#1088#1080#1090#1080' '#1095#1077#1082
        TabOrder = 3
        OnClick = Button4Click
      end
      object UpDown1: TUpDown
        Left = 217
        Top = 128
        Width = 16
        Height = 21
        Associate = Edit2
        Min = 0
        Position = 0
        TabOrder = 4
        Wrap = False
      end
      object Button6: TButton
        Left = 88
        Top = 56
        Width = 65
        Height = 25
        Caption = '...'
        TabOrder = 5
        OnClick = Button6Click
      end
      object Button1: TButton
        Left = 40
        Top = 208
        Width = 169
        Height = 25
        Caption = #1042#1080#1076#1072#1083#1080#1090#1080
        TabOrder = 6
        OnClick = Button1Click
      end
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 24
      Top = 48
      Width = 193
      Height = 21
      KeyField = #1050#1086#1076' '#1089#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1072
      ListField = #1055#1030#1041
      ListFieldIndex = 1
      ListSource = DataModule1.DataSPersonal
      TabOrder = 1
    end
    object Button5: TButton
      Left = 40
      Top = 144
      Width = 161
      Height = 25
      Caption = #1057#1090#1074#1086#1088#1080#1090#1080' '#1095#1077#1082
      TabOrder = 2
      OnClick = Button5Click
    end
    object DateTimePicker1: TDateTimePicker
      Left = 24
      Top = 112
      Width = 193
      Height = 21
      CalAlignment = dtaLeft
      Date = 44509.8413985301
      Time = 44509.8413985301
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 248
    Width = 985
    Height = 81
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = -8
    Top = 0
    Width = 993
    Height = 249
    DataSource = DataModule1.DataSCheck
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBGrid1: TDBGrid
    Left = -8
    Top = 328
    Width = 993
    Height = 353
    DataSource = DataModule1.DataSProdazi
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 1776
    Top = 8
    object N1: TMenuItem
      Caption = #1044#1086#1074#1110#1076#1085#1080#1082#1080
      object N3: TMenuItem
        Caption = #1058#1086#1074#1072#1088#1080
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1055#1088#1086#1076#1072#1078#1110
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1063#1077#1082
        OnClick = N7Click
      end
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1110
      OnClick = N2Click
    end
    object N8: TMenuItem
      Caption = #1042#1080#1093#1110#1076
      OnClick = N8Click
    end
  end
end
