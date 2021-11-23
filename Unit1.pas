unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, Grids, DBGrids, ExtCtrls, ComCtrls,DB;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button5: TButton;
    Button6: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    EditSearchN: TEdit;
    EditSearchC: TEdit;
    EditName: TEdit;
    EditValue: TEdit;
    EditDesc: TEdit;
    EditUOM: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    EditNameK: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    EditDescK: TEdit;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button10: TButton;
    Button11: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid3: TDBGrid;
    Button16: TButton;
    Button12: TButton;
    Button17: TButton;
    Label10: TLabel;
    Label11: TLabel;
    EditSalary: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    EditPosada: TEdit;
    Label14: TLabel;
    EditPhone: TEdit;
    Button18: TButton;
    Button19: TButton;
    EditPIB: TEdit;
    EditNumberP: TEdit;
    Button20: TButton;
    Button21: TButton;
    Panel7: TPanel;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Panel8: TPanel;
    Edit1: TEdit;
    Label15: TLabel;
    Button22: TButton;
    Button23: TButton;
    Label16: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button24: TButton;
    Button25: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure EditSearchNChange(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2,Unit3, Unit4, Unit5, Unit6;


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
EditName.Text:= '';
EditValue.Text:='';
EditDesc.Text:='';
EditUOM.Text:='';
DBLookupComboBox1.KeyValue:=1;
Button7.Visible:=true;
Button8.Visible:=true;
Panel2.Visible:=true;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin

 DataModule1.ADOQWork.Close;
 DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO ������ ( [�����],[���� �� ��/�� ���], [���� ������],[��� �������],[������� �����] ) '
 + 'values ("'+EditName.Text+'", '+EditValue.Text+', "'+EditDesc.Text+'", '+IntToStr(DBLookupComboBox1.KeyValue)+', "'+EditUOM.Text+'")';
 DataModule1.ADOQWork.ExecSQL;
 FormShow(Sender);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
EditName.Text:=DBGrid1.Fields[1].AsString;
EditValue.Text:=DBGrid1.Fields[2].AsString;
EditDesc.Text:=DBGrid1.Fields[3].AsString;
EditUOM.Text:=DBGrid1.Fields[5].AsString;
DataModule1.ADOTKategoria.Locate('�����',DBGrid1.Fields[4].AsString,[loCaseInsensitive,loPartialKey]);
DBLookupComboBox1.KeyValue:= StrToInt(DataModule1.DataSKategoria.DataSet.Fields[0].AsString);
Button7.Visible:= false;
Button8.Visible:=true;
Panel2.Visible:=true;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:='SELECT ������.[��� ������],������.�����, ������.[���� �� ��/�� ���], ������.[���� ������], ��������.�����, ������.[������� �����]'+
' FROM �������� INNER JOIN ������ ON ��������.[��� �������] = ������.[��� �������]';
DataModule1.ADOQTovari.Open;
panel2.Visible:=False;

DataModule1.ADOTKategoria.Active:=false;
DataModule1.ADOTKategoria.Active:=True;

DataModule1.ADOTPersonal.Active:=false;
DataModule1.ADOTPersonal.Active:=True;


end;

procedure TForm1.Button3Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM ������ WHERE (������.[��� ������] = '+DBGrid1.Fields[0].AsString+')';
DataModule1.ADOQWork.ExecSQL;
FormShow(Sender);
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'UPDATE ������ SET ������.[�����] = "'+EditName.Text+'", ������.[���� �� ��/�� ���] = '+EditValue.Text+', ������.[���� ������] = "'+EditDesc.Text+'", '
  + ' ������.[��� �������] = '+IntToStr(DBLookupComboBox1.KeyValue)+', ������.[������� �����] = "'+EditUOM.Text+'" WHERE (((������.[��� ������]) = '+DBGrid1.Fields[0].AsString+'))';
DataModule1.ADOQWork.ExecSQL;
FormShow(Sender);

end;

procedure TForm1.Button9Click(Sender: TObject);
begin
panel2.Visible:=false;
end;

procedure TForm1.EditSearchNChange(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:= 'SELECT ������.[��� ������],������.�����, ������.[���� �� ��/�� ���], ������.[���� ������], ��������.�����, ������.[������� �����]'+
' FROM �������� INNER JOIN ������ ON ��������.[��� �������] = ������.[��� �������]'+
' WHERE ������.[�����] like "%'+EditSearchN.Text+'%" ORDER BY ������.[��� ������]';
DataModule1.ADOQTovari.Open;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
DataModule1.ADOQTovari.Close;
DataModule1.ADOQTovari.SQL.Text:='SELECT ������.[��� ������], ������.�����, ������.[���� �� ��/�� ���], ������.[���� ������], ��������.�����, ������.[������� �����]'+
' FROM �������� INNER JOIN ������ ON ��������.[��� �������] = ������.[��� �������]'+
' WHERE ������.[��� ������] = '+EditSearchc.Text+' ORDER BY ������.[��� ������]';
DataModule1.ADOQTovari.Open;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
FormShow(Sender);
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
EditNameK.Text:= '';
EditDescK.Text:='';
Button13.Visible:=true;
Button14.Visible:=false;
Panel3.Visible:=true;

end;

procedure TForm1.Button10Click(Sender: TObject);
begin
EditNameK.Text:=DBGrid2.Fields[1].AsString;
EditDescK.Text:=DBGrid2.Fields[2].AsString;
Button13.Visible:= false;
Button14.Visible:=true;
Panel3.Visible:=true;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM �������� Where (��������.[��� �������] = '+DBGrid2.Fields[0].AsString+')';
DataModule1.ADOQWork.ExecSQL;
FormShow(Sender);
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
 DataModule1.ADOQWork.Close;
 DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO �������� ( [�����],[���� �������] )'
 +' values ("'+EditNameK.Text+'" , "'+EditDescK.Text+'")';
 DataModule1.ADOQWork.ExecSQL;
 FormShow(Sender);
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:='UPDATE �������� SET ��������.����� = "'+EditNameK.Text+'", ��������.[���� �������] = "'+EditDescK.Text+'"'
+ 'WHERE (((��������.[��� �������])='+DBGrid2.Fields[0].AsString+'))';
DataModule1.ADOQWork.ExecSQL;
 FormShow(Sender);
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
EditPIB.Text:= '';
EditNumberP.Text:='';
EditSalary.Text:='';
EditPosada.Text:='';
EditPhone.Text:='';
Button18.Visible:=true;
Button19.Visible:=false;
Panel5.Visible:=true;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
EditPIB.Text:=DBGrid3.Fields[1].AsString;
EditNumberP.Text:=DBGrid3.Fields[2].AsString;
EditSalary.Text:=DBGrid3.Fields[3].AsString;
EditPosada.Text:=DBGrid3.Fields[4].AsString;
EditPhone.Text:=DBGrid3.Fields[5].AsString;
Button18.Visible:= false;
Button19.Visible:=true;
Panel5.Visible:=true;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
 DataModule1.ADOQWork.Close;
 DataModule1.ADOQWork.SQL.Text:= 'INSERT INTO ����������� ( [ϲ�],[����� ��������],[�������� ����� (� ���)], [������], [�������] )'
 +' values ("'+EditPIB.Text+'", '+EditNumberP.Text+', '+EditSalary.Text+', "'+EditPosada.Text+'" , "'+EditPhone.Text+'")';
 DataModule1.ADOQWork.ExecSQL;
 FormShow(Sender);
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'UPDATE ����������� SET �����������.[ϲ�] = "'+EditPIB.Text+'", �����������.[����� ��������] = '+EditNumberP.Text+', �����������.[�������� ����� (� ���)] = '+EditSalary.Text+', �����������.[������] = "'+EditPosada.Text+'", �����������.[�������] = "'+EditPhone.Text+'" '
+ ' WHERE (((�����������.[��� �����������])='+DBGrid3.Fields[0].AsString+'))';
DataModule1.ADOQWork.ExecSQL;
FormShow(Sender);
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
DataModule1.ADOQWork.Close;
DataModule1.ADOQWork.SQL.Text:= 'DELETE * FROM ����������� WHERE (�����������.[��� �����������] = '+DBGrid3.Fields[0].AsString+')';
DataModule1.ADOQWork.ExecSQL;
FormShow(Sender);
end;



procedure TForm1.Button20Click(Sender: TObject);
begin
panel3.Visible:=false;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
Panel5.Visible:= False;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
DataModule1.ADOQProdazi2.Close;
DataModule1.ADOQProdazi2.SQL.Text:='SELECT ������.[��� �������], �����������.ϲ�, ������.�����, ������.ʳ������, ������.����, ������.[��� ����], ������.[���� ������]'+
'FROM ��� INNER JOIN (������ INNER JOIN (����������� INNER JOIN ������ ON �����������.[��� �����������] = ������.[��� �����������]) ON ������.[��� ������] = ������.[��� ������]) ON ���.[��� ����] = ������.[��� ����]'+
'WHERE (((������.[��� ����]) ='+Edit1.Text+'))';
DataModule1.ADOQProdazi2.Open;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
Edit1.clear;
DataModule1.ADOQProdazi2.Close;
DataModule1.ADOQProdazi2.SQL.Text:='SELECT ������.[��� �������], �����������.ϲ�, ������.�����, ������.ʳ������, ������.����, ������.[��� ����], ������.[���� ������]'+
'FROM ��� INNER JOIN (������ INNER JOIN (����������� INNER JOIN ������ ON �����������.[��� �����������] = ������.[��� �����������]) ON ������.[��� ������] = ������.[��� ������]) ON ���.[��� ����] = ������.[��� ����]';

DataModule1.ADOQProdazi2.Open;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:=' SELECT ���.[��� ����], ���.����, ���.[�������� ����]'+
'FROM ��� WHERE (((���.����)= :dt))';
DataModule1.ADOQCheck.Parameters.ParamByName('dt').Value:=FormatDateTime('dd.mm.yyyy', DateTimePicker1.Date);
DataModule1.ADOQCheck.Open;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
DataModule1.ADOQCheck.Close;
DataModule1.ADOQCheck.SQL.Text:=' SELECT ���.[��� ����], ���.����, ���.[�������� ����] FROM ���';
DataModule1.ADOQCheck.Open;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form6.QuickRep1.PreviewModal;
end;

end.
