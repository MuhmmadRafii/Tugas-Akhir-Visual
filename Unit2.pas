unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection;

type
  TForm2 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    dbgrd1: TDBGrid;
    dtp1: TDateTimePicker;
    procedure btn1Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
begin

zqry1.SQL.Clear;
zqry1.SQL.Add('insert into pesanan values(null,"'+edt1.Text+'","'+edt2.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'")');
zqry1.ExecSQL ;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from pesanan');
zqry1.Open;
Showmessage('DATA BERHASIL DI SIMPAN');

end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  edt1.Text:=zqry1.Fields[1].AsString;
  edt2.Text:=zqry1.Fields[2].AsString;
  dtp1.date:=zqry1.Fields[3].AsDateTime;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
 zqry1.SQL.Clear;
  zqry1.SQL.Add('update pesanan set nama_produk ="'+edt1.Text+'", jumlah_produk ="'+edt2.Text+'" where 1 "');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from pesanan');
  zqry1.Open;
  Showmessage('DATA BERHASIL DI EDIT');
end;

procedure TForm2.btn3Click(Sender: TObject);
begin
  zqry1.SQL.Clear;
  zqry1.SQL.Add('DELETE FROM `pesanan` WHERE 0');
  zqry1.ExecSQL;
  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from pesanan ');
  zqry1.Open;
  ShowMessage('DATA BERHASIL DIHAPUS!');
end;

end.
