unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, DBCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  CTov: String;

implementation
uses unit1,unit2,unit3;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
CTov:=DBGrid1.Fields[0].AsString;
Label1.Caption:='Ви обрали товар №'+CTov;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Form4.Close;
end;

procedure TForm4.Edit1Change(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товари.[Код товара],Товари.Назва, Товари.[Цена за шт/кг грн], Товари.[Опис товара], Категорія.Назва, Товари.[Одиниця виміру]'+
' FROM Категорія INNER JOIN Товари ON Категорія.[Код категорії] = Товари.[Код категорії]'+
' WHERE Товари.[Назва] like "%'+Edit1.Text+'%" ORDER BY Товари.[Код товара]';
DataModule1.ADOQTovari.Open;
end;

procedure TForm4.DBLookupComboBox1Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товари.[Код товара],Товари.Назва, Товари.[Цена за шт/кг грн], Товари.[Опис товара], Категорія.Назва, Товари.[Одиниця виміру]'+
' FROM Категорія INNER JOIN Товари ON Категорія.[Код категорії] = Товари.[Код категорії]'+
' WHERE Товари.[Код категорії] = '+IntToStr(DBLookupComboBox1.KeyValue)+' ORDER BY Товари.[Код товара]';
DataModule1.ADOQTovari.Open;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Edit1.Clear;
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT Товари.[Код товара],Товари.Назва, Товари.[Цена за шт/кг грн], Товари.[Опис товара], Категорія.Назва, Товари.[Одиниця виміру]'+
' FROM Категорія INNER JOIN Товари ON Категорія.[Код категорії] = Товари.[Код категорії]';
DataModule1.ADOQTovari.Open;
end;

end.
