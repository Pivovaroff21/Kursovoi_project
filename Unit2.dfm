object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 252
  Top = 189
  Height = 496
  Width = 436
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=D:\'#1082#1086 +
      #1083#1083#1077#1076#1078'\3 '#1082#1091#1088#1089'\'#1041#1072#1079#1099' '#1076#1072#1085#1099#1093'\'#1082#1091#1088#1089#1086#1074#1072#1103'\'#1047#1072#1076#1072#1085#1080#1077'4\'#1047#1072#1076#1072#1085#1080#1077' 4.mdb;Mode=Sha' +
      're Deny None;Persist Security Info=False;Jet OLEDB:System databa' +
      'se="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";' +
      'Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locking Mode=0;Jet OL' +
      'EDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions' +
      '=1;Jet OLEDB:New Database Password="";Jet OLEDB:Create System Da' +
      'tabase=False;Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Co' +
      'py Locale on Compact=False;Jet OLEDB:Compact Without Replica Rep' +
      'air=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object ADOTTovari: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1058#1086#1074#1072#1088#1080
    Left = 288
    Top = 64
  end
  object DataSKategoria: TDataSource
    DataSet = ADOTKategoria
    Left = 200
    Top = 120
  end
  object ADOQTovari: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSKategoria
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1058#1086#1074#1072#1088#1080'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'], '#1058#1086#1074#1072#1088#1080'.'#1053#1072#1079#1074#1072', '#1058#1086#1074#1072#1088#1080'.['#1062#1077#1085#1072' '#1079#1072' '#1096#1090'/'#1082#1075' ' +
        #1075#1088#1085'], '#1058#1086#1074#1072#1088#1080'.['#1054#1087#1080#1089' '#1090#1086#1074#1072#1088#1072'], '#1050#1072#1090#1077#1075#1086#1088#1110#1103'.'#1053#1072#1079#1074#1072', '#1058#1086#1074#1072#1088#1080'.['#1054#1076#1080#1085#1080#1094#1103' '#1074#1080#1084 +
        #1110#1088#1091']'
      
        'FROM '#1058#1086#1074#1072#1088#1080' INNER JOIN '#1050#1072#1090#1077#1075#1086#1088#1110#1103' ON '#1058#1086#1074#1072#1088#1080'.['#1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1110#1111'] = '#1050#1072#1090 +
        #1077#1075#1086#1088#1110#1103'.['#1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1110#1111'];')
    Left = 120
    Top = 64
  end
  object DataSTovari: TDataSource
    DataSet = ADOQTovari
    Left = 200
    Top = 64
  end
  object ADOTKategoria: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1072#1090#1077#1075#1086#1088#1110#1103
    Left = 288
    Top = 120
  end
  object DataSWork: TDataSource
    DataSet = ADOQWork
    Left = 200
    Top = 8
  end
  object ADOQWork: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSTovari
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1058#1086#1074#1072#1088#1080'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'], '#1058#1086#1074#1072#1088#1080'.'#1053#1072#1079#1074#1072', '#1058#1086#1074#1072#1088#1080'.['#1062#1077#1085#1072' '#1079#1072' '#1096#1090'/'#1082#1075' ' +
        #1075#1088#1085'], '#1058#1086#1074#1072#1088#1080'.['#1054#1087#1080#1089' '#1090#1086#1074#1072#1088#1072'], '#1050#1072#1090#1077#1075#1086#1088#1110#1103'.'#1053#1072#1079#1074#1072', '#1058#1086#1074#1072#1088#1080'.['#1054#1076#1080#1085#1080#1094#1103' '#1074#1080#1084 +
        #1110#1088#1091']'
      
        'FROM '#1058#1086#1074#1072#1088#1080' INNER JOIN '#1050#1072#1090#1077#1075#1086#1088#1110#1103' ON '#1058#1086#1074#1072#1088#1080'.['#1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1110#1111'] = '#1050#1072#1090 +
        #1077#1075#1086#1088#1110#1103'.['#1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1110#1111'];'
      '')
    Left = 120
    Top = 8
  end
  object ADOTPersonal: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080
    Left = 288
    Top = 176
  end
  object DataSPersonal: TDataSource
    DataSet = ADOTPersonal
    Left = 200
    Top = 176
  end
  object ADOQKategoria: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DataSKategoria
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1050#1072#1090#1077#1075#1086#1088#1110#1103'.['#1050#1086#1076' '#1082#1072#1090#1077#1075#1086#1088#1110#1111'], '#1050#1072#1090#1077#1075#1086#1088#1110#1103'.'#1053#1072#1079#1074#1072', '#1050#1072#1090#1077#1075#1086#1088#1110#1103'.['#1054#1087 +
        #1080#1089' '#1082#1072#1090#1077#1075#1086#1088#1110#1111'] FROM '#1050#1072#1090#1077#1075#1086#1088#1110#1103';')
    Left = 120
    Top = 120
  end
  object ADOQPersonal: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1050#1086#1076' '#1089#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1072'], '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1055#1030#1041'], '#1057 +
        #1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072'], '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1047#1072#1088#1086#1073#1110#1090#1085#1072' '#1087#1083#1072#1090#1072' ('#1074 +
        ' '#1075#1088#1085')], '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1055#1086#1089#1072#1076#1072'], '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1058#1077#1083#1077#1092#1086#1085'] FROM '#1057#1087#1110 +
        #1074#1088#1086#1073#1110#1090#1085#1080#1082#1080';')
    Left = 120
    Top = 176
  end
  object ADOTCheck: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1063#1077#1082
    Left = 288
    Top = 232
  end
  object DataSCheck: TDataSource
    DataSet = ADOQCheck
    Left = 200
    Top = 232
  end
  object ADOQCheck: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM '#1063#1077#1082' ORDER BY ['#1050#1086#1076' '#1095#1077#1082#1072'];')
    Left = 120
    Top = 232
  end
  object ADOTProdazi: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1088#1086#1076#1072#1078#1110
    Left = 288
    Top = 288
  end
  object DataSProdazi: TDataSource
    DataSet = ADOProdazi
    Left = 200
    Top = 288
  end
  object ADOProdazi: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 120
    Top = 288
  end
  object ADOQCheckRep: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1087#1088#1086#1076#1072#1078#1091'], '#1055#1088#1086#1076#1072#1078#1110'.'#1044#1072#1090#1072', '#1058#1086#1074#1072#1088#1080'.'#1053#1072#1079#1074#1072', '#1058#1086#1074#1072#1088#1080 +
        '.['#1062#1077#1085#1072' '#1079#1072' '#1096#1090'/'#1082#1075' '#1075#1088#1085'], '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.'#1055#1030#1041', '#1055#1088#1086#1076#1072#1078#1110'.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', '#1063#1077#1082'.' +
        '['#1050#1086#1076' '#1095#1077#1082#1072']'
      
        'FROM '#1063#1077#1082' INNER JOIN ('#1058#1086#1074#1072#1088#1080' INNER JOIN ('#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080' INNER JOIN' +
        ' '#1055#1088#1086#1076#1072#1078#1110' ON '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1050#1086#1076' '#1089#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1089#1087#1110 +
        #1074#1088#1086#1073#1110#1090#1085#1080#1082#1072']) ON '#1058#1086#1074#1072#1088#1080'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072']) ON '#1063 +
        #1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1095#1077#1082#1072'];')
    Left = 120
    Top = 344
  end
  object ADOQProdazi2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1087#1088#1086#1076#1072#1078#1091'], '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.'#1055#1030#1041', '#1058#1086#1074#1072#1088#1080'.'#1053#1072#1079#1074#1072', '#1055 +
        #1088#1086#1076#1072#1078#1110'.'#1050#1110#1083#1100#1082#1110#1089#1090#1100', '#1055#1088#1086#1076#1072#1078#1110'.'#1044#1072#1090#1072', '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1095#1077#1082#1072'], '#1055#1088#1086#1076#1072#1078#1110'.['#1057#1091#1084 +
        #1072' '#1087#1088#1086#1076#1072#1078#1110']'
      
        'FROM '#1063#1077#1082' INNER JOIN ('#1058#1086#1074#1072#1088#1080' INNER JOIN ('#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080' INNER JOIN' +
        ' '#1055#1088#1086#1076#1072#1078#1110' ON '#1057#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1080'.['#1050#1086#1076' '#1089#1087#1110#1074#1088#1086#1073#1110#1090#1085#1080#1082#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1089#1087#1110 +
        #1074#1088#1086#1073#1110#1090#1085#1080#1082#1072']) ON '#1058#1086#1074#1072#1088#1080'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072']) ON '#1063 +
        #1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1072'] = '#1055#1088#1086#1076#1072#1078#1110'.['#1050#1086#1076' '#1095#1077#1082#1072'];')
    Left = 120
    Top = 400
  end
  object DataProdazi2: TDataSource
    DataSet = ADOQProdazi2
    Left = 200
    Top = 400
  end
end