object Form1: TForm1
  Left = 141
  Top = 162
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1086#1074#1110#1076#1085#1080#1082
  ClientHeight = 701
  ClientWidth = 1228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1228
    Height = 701
    ActivePage = TabSheet5
    Align = alClient
    TabIndex = 4
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1086#1074#1072#1088#1080
      object Panel1: TPanel
        Left = 0
        Top = 515
        Width = 1220
        Height = 80
        Align = alBottom
        TabOrder = 0
        object Label1: TLabel
          Left = 592
          Top = 8
          Width = 129
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1090#1086#1074#1072#1088#1091' '#1079#1072' '#1085#1072#1079#1074#1086#1102':'
        end
        object Label2: TLabel
          Left = 592
          Top = 40
          Width = 99
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1082#1086#1076#1091' '#1090#1086#1074#1072#1088#1091':'
        end
        object Button1: TButton
          Left = 8
          Top = 8
          Width = 97
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 112
          Top = 8
          Width = 97
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 216
          Top = 8
          Width = 97
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 320
          Top = 8
          Width = 97
          Height = 25
          Caption = #1047#1074#1110#1090
          TabOrder = 3
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 848
          Top = 40
          Width = 65
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 4
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 776
          Top = 40
          Width = 65
          Height = 25
          Caption = #1054#1082
          TabOrder = 5
          OnClick = Button6Click
        end
        object EditSearchN: TEdit
          Left = 728
          Top = 8
          Width = 185
          Height = 21
          TabOrder = 6
          OnChange = EditSearchNChange
        end
        object EditSearchC: TEdit
          Left = 696
          Top = 40
          Width = 73
          Height = 21
          TabOrder = 7
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 595
        Width = 1220
        Height = 78
        Align = alBottom
        TabOrder = 1
        Visible = False
        object Label3: TLabel
          Left = 8
          Top = 16
          Width = 35
          Height = 13
          Caption = #1053#1072#1079#1074#1072':'
        end
        object Label4: TLabel
          Left = 8
          Top = 48
          Width = 52
          Height = 13
          Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103':'
        end
        object Label5: TLabel
          Left = 224
          Top = 16
          Width = 72
          Height = 13
          Caption = #1062#1110#1085#1072' '#1079#1072' '#1096#1090'/'#1082#1075':'
        end
        object Label6: TLabel
          Left = 224
          Top = 48
          Width = 67
          Height = 13
          Caption = #1054#1087#1080#1089' '#1090#1086#1074#1072#1088#1072':'
        end
        object Label7: TLabel
          Left = 472
          Top = 16
          Width = 79
          Height = 13
          Caption = #1054#1076#1080#1085#1080#1094#1110' '#1074#1080#1084#1110#1088#1091':'
        end
        object Button7: TButton
          Left = 728
          Top = 16
          Width = 105
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 0
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 728
          Top = 48
          Width = 105
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 1
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 848
          Top = 16
          Width = 105
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = Button9Click
        end
        object EditName: TEdit
          Left = 64
          Top = 16
          Width = 137
          Height = 21
          TabOrder = 3
        end
        object EditValue: TEdit
          Left = 304
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 4
        end
        object EditDesc: TEdit
          Left = 304
          Top = 48
          Width = 145
          Height = 21
          TabOrder = 5
        end
        object EditUOM: TEdit
          Left = 560
          Top = 16
          Width = 145
          Height = 21
          TabOrder = 6
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 64
          Top = 48
          Width = 137
          Height = 21
          KeyField = #1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
          ListField = #1053#1072#1079#1074#1072
          ListSource = DataModule1.DataSKategoria
          TabOrder = 7
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1220
        Height = 515
        Align = alClient
        DataSource = DataModule1.DataSTovari
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1050#1072#1090#1077#1075#1086#1088#1110#1103
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 1220
        Height = 514
        Align = alClient
        DataSource = DataModule1.DataSKategoria
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object Panel3: TPanel
        Left = 0
        Top = 594
        Width = 1220
        Height = 79
        Align = alBottom
        TabOrder = 1
        Visible = False
        object Label8: TLabel
          Left = 8
          Top = 8
          Width = 81
          Height = 13
          Caption = #1053#1072#1079#1074#1072' '#1050#1072#1090#1077#1075#1086#1088#1110#1111
        end
        object Label9: TLabel
          Left = 232
          Top = 8
          Width = 74
          Height = 13
          Caption = #1054#1087#1080#1089' '#1082#1072#1090#1077#1075#1086#1088#1110#1111
        end
        object EditNameK: TEdit
          Left = 96
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 0
        end
        object EditDescK: TEdit
          Left = 312
          Top = 8
          Width = 121
          Height = 21
          TabOrder = 1
        end
        object Button13: TButton
          Left = 448
          Top = 8
          Width = 105
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 2
          OnClick = Button13Click
        end
        object Button14: TButton
          Left = 448
          Top = 48
          Width = 105
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 3
          OnClick = Button14Click
        end
        object Button20: TButton
          Left = 312
          Top = 48
          Width = 121
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 4
          OnClick = Button20Click
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 514
        Width = 1220
        Height = 80
        Align = alBottom
        TabOrder = 2
        object Button15: TButton
          Left = 0
          Top = 8
          Width = 97
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button15Click
        end
        object Button10: TButton
          Left = 104
          Top = 8
          Width = 97
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 208
          Top = 8
          Width = 97
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button11Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080
      ImageIndex = 2
      object Panel5: TPanel
        Left = 0
        Top = 593
        Width = 1220
        Height = 80
        Align = alBottom
        TabOrder = 0
        Visible = False
        object Label10: TLabel
          Left = 8
          Top = 8
          Width = 18
          Height = 13
          Caption = #1055#1030#1041
        end
        object Label11: TLabel
          Left = 8
          Top = 48
          Width = 84
          Height = 13
          Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
        end
        object Label12: TLabel
          Left = 272
          Top = 8
          Width = 117
          Height = 13
          Caption = #1047#1072#1088#1086#1073#1110#1090#1085#1072' '#1087#1083#1072#1090#1072' ('#1074' '#1075#1088#1085')'
        end
        object Label13: TLabel
          Left = 272
          Top = 40
          Width = 38
          Height = 13
          Caption = #1055#1086#1089#1072#1076#1072
        end
        object Label14: TLabel
          Left = 568
          Top = 8
          Width = 45
          Height = 13
          Caption = #1058#1077#1083#1077#1092#1086#1085
        end
        object EditPIB: TEdit
          Left = 96
          Top = 8
          Width = 161
          Height = 21
          TabOrder = 0
        end
        object EditNumberP: TEdit
          Left = 96
          Top = 40
          Width = 161
          Height = 21
          TabOrder = 1
        end
        object EditSalary: TEdit
          Left = 392
          Top = 8
          Width = 161
          Height = 21
          TabOrder = 2
          Text = '0'
        end
        object EditPosada: TEdit
          Left = 392
          Top = 40
          Width = 161
          Height = 21
          TabOrder = 3
        end
        object EditPhone: TEdit
          Left = 616
          Top = 8
          Width = 161
          Height = 21
          TabOrder = 4
        end
        object Button18: TButton
          Left = 568
          Top = 40
          Width = 97
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 5
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 680
          Top = 40
          Width = 97
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080' '#1079#1072#1087#1080#1089
          TabOrder = 6
          OnClick = Button19Click
        end
        object Button21: TButton
          Left = 792
          Top = 40
          Width = 105
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 7
          OnClick = Button21Click
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 513
        Width = 1220
        Height = 80
        Align = alBottom
        TabOrder = 1
        object Button16: TButton
          Left = 8
          Top = 8
          Width = 97
          Height = 25
          Caption = #1044#1086#1076#1072#1090#1080
          TabOrder = 0
          OnClick = Button16Click
        end
        object Button12: TButton
          Left = 112
          Top = 8
          Width = 97
          Height = 25
          Caption = #1047#1084#1110#1085#1080#1090#1080
          TabOrder = 1
          OnClick = Button12Click
        end
        object Button17: TButton
          Left = 216
          Top = 8
          Width = 97
          Height = 25
          Caption = #1042#1080#1076#1072#1083#1080#1090#1080
          TabOrder = 2
          OnClick = Button17Click
        end
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1220
        Height = 513
        Align = alClient
        DataSource = DataModule1.DataSPersonal
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1110
      ImageIndex = 3
      object Panel7: TPanel
        Left = 0
        Top = 595
        Width = 1220
        Height = 78
        Align = alBottom
        TabOrder = 0
        object Label15: TLabel
          Left = 24
          Top = 8
          Width = 123
          Height = 13
          Caption = #1055#1086#1096#1091#1082' '#1079#1072' '#1085#1086#1084#1077#1088#1086#1084' '#1095#1077#1082#1072
        end
        object Edit1: TEdit
          Left = 176
          Top = 8
          Width = 193
          Height = 21
          TabOrder = 0
        end
        object Button22: TButton
          Left = 392
          Top = 8
          Width = 105
          Height = 25
          Caption = #1054#1082
          TabOrder = 1
          OnClick = Button22Click
        end
        object Button23: TButton
          Left = 536
          Top = 8
          Width = 113
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = Button23Click
        end
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 0
        Width = 1220
        Height = 595
        Align = alClient
        DataSource = DataModule1.DataProdazi2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1063#1077#1082
      ImageIndex = 4
      object Panel8: TPanel
        Left = 0
        Top = 595
        Width = 1220
        Height = 78
        Align = alBottom
        TabOrder = 0
        object Label16: TLabel
          Left = 40
          Top = 8
          Width = 73
          Height = 13
          Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1076#1072#1090#1077
        end
        object DateTimePicker1: TDateTimePicker
          Left = 160
          Top = 8
          Width = 186
          Height = 21
          CalAlignment = dtaLeft
          Date = 44512.4039784144
          Time = 44512.4039784144
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 0
        end
        object Button24: TButton
          Left = 392
          Top = 8
          Width = 105
          Height = 25
          Caption = #1054#1082
          TabOrder = 1
          OnClick = Button24Click
        end
        object Button25: TButton
          Left = 544
          Top = 8
          Width = 105
          Height = 25
          Caption = #1042#1110#1076#1084#1110#1085#1080#1090#1080
          TabOrder = 2
          OnClick = Button25Click
        end
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 1220
        Height = 595
        Align = alClient
        DataSource = DataModule1.DataSCheck
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
end
