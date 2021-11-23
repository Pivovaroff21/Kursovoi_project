unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N2: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    Label5: TLabel;
    Button3: TButton;
    Button4: TButton;
    UpDown1: TUpDown;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Button5: TButton;
    Label8: TLabel;
    Button6: TButton;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    Button1: TButton;
    N8: TMenuItem;
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  CheckNom,CheckSum,CenaTov:String;

implementation

uses Unit1,Unit2, Unit4, Unit5, Unit7;
{$R *.dfm}

procedure TForm3.N3Click(Sender: TObject);
begin
Form1.PageControl1.TabIndex:=0;
Form1.Showmodal;

end;

procedure TForm3.N4Click(Sender: TObject);
begin
 Form1.PageControl1.TabIndex:=1;
Form1.Showmodal;
end;

procedure TForm3.N5Click(Sender: TObject);
begin
Form1.PageControl1.TabIndex:=2;
Form1.Showmodal;
end;

procedure TForm3.N6Click(Sender: TObject);
begin
Form1.PageControl1.TabIndex:=3;
Form1.Showmodal;
end;

procedure TForm3.N7Click(Sender: TObject);
begin
Form1.PageControl1.TabIndex:=4;
Form1.Showmodal;
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
Form4.show;
Button2.Enabled:=true;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='INSERT INTO ��� ( [����],[�������� ����]) values '
+'(:dt, 0)';
DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule1.ADOQWORK.ExecSQL;
FormShow(Sender);

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'SELECT ���.[��� ����], ���.����, ���.[�������� ����] FROM ��� ORDER BY ���.[��� ����]';
DataModule1.ADOQWork.Open;

DataModule1.ADOQWork.Last;
CheckNom:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
Label8.Caption:='��� �'+CheckNom;

DataModule1.ADOProdazi.Close;
DataModule1.ADOProdazi.SQL.Text:='SELECT ������.[��� �������], �����������.ϲ�, ������.�����, ������.ʳ������, ������.����, ������.[��� ����], ������.[���� ������]'+
'FROM ��� INNER JOIN (������ INNER JOIN (����������� INNER JOIN ������ ON �����������.[��� �����������] = ������.[��� �����������]) ON ������.[��� ������] = ������.[��� ������]) ON ���.[��� ����] = ������.[��� ����]'+
'WHERE (((������.[��� ����]) = '+CheckNom+'))';
DataModule1.ADOProdazi.Open;
CheckSum:='0';
label5.Caption:='����� �� ����(���):'+ CheckSum;

panel3.Enabled:=true;

DBlookupComboBox2.Enabled:=false;
DateTimePicker1.Enabled:=false ;
Button5.Enabled:=false;


end;

procedure TForm3.FormShow(Sender: TObject);
begin
DateTimePicker1.Date:=Now;
DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:= 'SELECT ���.[��� ����], ���.����, ���.[�������� ����] FROM ��� ORDER BY ���.[��� ����]';
DataModule1.ADOQCheck.Open;

DBLookupComboBox2.KeyValue:=1;


end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
 CenaTov:=IntToStr(DataModule1.DataSTovari.DataSet.Fields[2].AsInteger*StrToInt(Edit2.Text));
 Label1.Caption:='���� ������ (���)'+ CenaTov;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='INSERT INTO ������ ( [��� �����������],[��� ������], [ʳ������],[����],[��� ����],[���� ������] ) '
 + 'values ('+IntToStr(DBLookupComboBox2.KeyValue)+', '+CTov+','+Edit2.Text+', :dt , '+CheckNom+','+CenaTov+')';
DataModule1.ADOQWork.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date);
DataModule1.ADOQWork.ExecSQL;

 DataModule1.ADOProdazi.Close;
 DataModule1.ADOProdazi.SQL.Text:='SELECT ������.[��� �������], �����������.ϲ�, ������.�����, ������.ʳ������,  ������.����, ������.[��� ����],������.[���� ������]'+
'FROM ����������� INNER JOIN (��� INNER JOIN (������ INNER JOIN ������ ON ������.[��� ������] = ������.[��� ������]) ON ���.[��� ����] = ������.[��� ����]) ON �����������.[��� �����������] = ������.[��� �����������]'+
'WHERE (((������.[��� ����]) = '+CheckNom+'))';
DataModule1.ADOProdazi.Open;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='SELECT Sum(������.[���� ������]) FROM ������ GROUP BY ������.[��� ����] HAVING(((������.[��� ����]) = '+CheckNom+'))';
DataModule1.ADOQWork.Open;
CheckSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
label5.Caption:='���� �� ����(���):' + CheckSum;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE ��� SET ���.[�������� ����] = '+CheckSum+' WHERE (((���.[��� ����]) = '+CheckNom+'))' ;
DataModule1.ADOQWork.ExecSQL;
FormShow(sender);
end;



procedure TForm3.Button1Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM ������ Where (������.[��� �������] = '+DBGrid1.Fields[0].AsString+')';
DataModule1.ADOQWork.ExecSQL;

DataModule1.ADOProdazi.Close;
DataModule1.ADOProdazi.SQL.Text:='SELECT ������.[��� �������], �����������.ϲ�, ������.�����, ������.ʳ������,  ������.����, ������.[��� ����],������.[���� ������]'+
'FROM ����������� INNER JOIN (��� INNER JOIN (������ INNER JOIN ������ ON ������.[��� ������] = ������.[��� ������]) ON ���.[��� ����] = ������.[��� ����]) ON �����������.[��� �����������] = ������.[��� �����������]'+
'WHERE (((������.[��� ����]) = '+CheckNom+'))';
DataModule1.ADOProdazi.Open;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='SELECT Sum(������.[���� ������]) FROM ������ GROUP BY ������.[��� ����] HAVING(((������.[��� ����]) = '+CheckNom+'))';
DataModule1.ADOQWork.Open;
CheckSum:= DataModule1.DataSWork.DataSet.Fields[0].AsString;
label5.Caption:='���� �� ����(���):' + CheckSum;

DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE ��� SET ���.[�������� ����] = '+CheckSum+' WHERE (((���.[��� ����]) = '+CheckNom+'))' ;
DataModule1.ADOQWork.ExecSQL;
FormShow(sender);


end;

procedure TForm3.Button4Click(Sender: TObject);
begin
CheckNom:=IntToStr(StrToInt(CheckNom)+1);
panel3.Enabled:=false;
DBlookupComboBox2.Enabled:=true;
DateTimePicker1.Enabled:=true;
Button5.Enabled:=true;
DataModule1.ADOProdazi.SQL.Text:='SELECT ������.[��� ������], �����������.ϲ�, ������.�����, ������.ʳ������,������.����, ������.[��� ����],������.[���� ������]'+
'FROM ����������� INNER JOIN (��� INNER JOIN (������ INNER JOIN ������ ON ������.[��� ������] = ������.[��� ������]) ON ���.[��� ����] = ������.[��� ����]) ON �����������.[��� �����������] = ������.[��� �����������]'
+'WHERE (((���.[��� ����]): = '+CheckNom+'))';
end;

procedure TForm3.Button3Click(Sender: TObject);
begin

DataModule1.ADOQCheckRep.Close;
DataModule1.ADOQCheckRep.SQL.Text:= ' SELECT ������.[��� �������], ������.����, ������.�����, ������.[���� �� ��/�� ���], �����������.ϲ�, ������.ʳ������, ���.[��� ����]'+
'FROM ��� INNER JOIN (������ INNER JOIN (����������� INNER JOIN ������ ON �����������.[��� �����������] = ������.[��� �����������]) ON ������.[��� ������] = ������.[��� ������])'+
' ON ���.[��� ����] = ������.[��� ����] WHERE(((������.[��� ����]) ='+CheckNom+'))';
DataModule1.ADOQCheckRep.Open;


Form5.QRLabel2.Caption:= '����'+ DateToStr(DateTimePicker1.Date);
Form5.QRLabel3.Caption:= '����������:' + DBlookupcomboBox2.Text;
Form5.QRLabel1.Caption:= '��� �'+ CheckNom;
Form5.QRLabel10.Caption:= '�������� ����(���)' + CheckSum;

Form5.QuickRep1.PreviewModal;
end;

procedure TForm3.N8Click(Sender: TObject);
begin
Form3.close;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
Form7.Show;
end;

end.
