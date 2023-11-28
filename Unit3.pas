unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    produk: TMenuItem;
    pesanan: TMenuItem;
    DataPelanggan1: TMenuItem;
    DataFaktur1: TMenuItem;
    DataDetailPesan1: TMenuItem;
    procedure pesananClick(Sender: TObject);
    procedure produkClick(Sender: TObject);
    procedure DataPelanggan1Click(Sender: TObject);
    procedure DataFaktur1Click(Sender: TObject);
    procedure DataDetailPesan1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit2, Unit4, Unit5, Unit6;

{$R *.dfm}


procedure TForm3.pesananClick(Sender: TObject);
begin
 if Form2=nil then
  Form2:=TForm2.Create(Application);
  Form2.Show;
end;

procedure TForm3.produkClick(Sender: TObject);
begin
if Form1=nil then
  Form1:=TForm1.Create(Application);
  Form1.Show;
end;

procedure TForm3.DataPelanggan1Click(Sender: TObject);
begin
if Form4=nil then
  Form4:=TForm4.Create(Application);
  Form4.Show;
end;

procedure TForm3.DataFaktur1Click(Sender: TObject);
begin
if Form5=nil then
  Form5:=TForm5.Create(Application);
  Form5.Show;
end;

procedure TForm3.DataDetailPesan1Click(Sender: TObject);
begin
 if Form6=nil then
  Form6:=TForm6.Create(Application);
  Form6.Show;
end;

end.
