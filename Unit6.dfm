object Form6: TForm6
  Left = 468
  Top = 263
  Width = 1305
  Height = 675
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 48
    Top = 80
    Width = 73
    Height = 13
    Caption = 'NAMA PRODUK'
  end
  object lbl3: TLabel
    Left = 56
    Top = 120
    Width = 39
    Height = 13
    Caption = 'JUMLAH'
  end
  object lbl4: TLabel
    Left = 40
    Top = 200
    Width = 70
    Height = 13
    Caption = 'TOTAL HARGA'
  end
  object lbl1: TLabel
    Left = 56
    Top = 160
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object edt1: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 136
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btn1: TButton
    Left = 32
    Top = 256
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 120
    Top = 256
    Width = 75
    Height = 25
    Caption = 'UPDATE'
    TabOrder = 4
  end
  object btn3: TButton
    Left = 208
    Top = 256
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn3Click
  end
  object c1: TComboBox
    Left = 136
    Top = 160
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Dalam Proses'
      'Selesai'
      'Dibatalkan')
  end
  object dbgrd1: TDBGrid
    Left = 8
    Top = 288
    Width = 409
    Height = 129
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 320
    Top = 32
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    AutoCommit = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'sepeda'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\Users\ACER\Downloads\Zeos703\Zeos703\libmysql.dll'
    Left = 320
    Top = 88
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from detail_pesanan')
    Params = <>
    Left = 320
    Top = 152
  end
end
