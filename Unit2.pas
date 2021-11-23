unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB, Menus;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTTovari: TADOTable;
    DataSKategoria: TDataSource;
    ADOQTovari: TADOQuery;
    DataSTovari: TDataSource;
    ADOTKategoria: TADOTable;
    DataSWork: TDataSource;
    ADOQWork: TADOQuery;
    ADOTPersonal: TADOTable;
    DataSPersonal: TDataSource;
    ADOQKategoria: TADOQuery;
    ADOQPersonal: TADOQuery;
    ADOTCheck: TADOTable;
    DataSCheck: TDataSource;
    ADOQCheck: TADOQuery;
    ADOTProdazi: TADOTable;
    DataSProdazi: TDataSource;
    ADOProdazi: TADOQuery;
    ADOQCheckRep: TADOQuery;
    ADOQProdazi2: TADOQuery;
    DataProdazi2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation
 uses unit1;
{$R *.dfm}

end.
