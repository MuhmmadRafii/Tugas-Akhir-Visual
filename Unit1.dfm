object Form1: TForm1
  Left = 419
  Top = 293
  Width = 813
  Height = 660
  Caption = 'Form1'
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
    Left = 48
    Top = 128
    Width = 35
    Height = 13
    Caption = 'HARGA'
  end
  object lbl4: TLabel
    Left = 48
    Top = 168
    Width = 33
    Height = 13
    Caption = 'STOCK'
  end
  object edt2: TEdit
    Left = 136
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt3: TEdit
    Left = 136
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edt4: TEdit
    Left = 136
    Top = 160
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
    OnClick = btn2Click
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
  object dbgrd1: TDBGrid
    Left = 16
    Top = 304
    Width = 393
    Height = 97
    DataSource = ds1
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'id_produk'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama_produk'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'harga'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stok'
        Visible = True
      end>
  end
  object btn4: TButton
    Left = 304
    Top = 256
    Width = 75
    Height = 25
    Caption = 'CLEAR FORM'
    TabOrder = 7
    OnClick = btn4Click
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
      'select * from produk')
    Params = <>
    Left = 320
    Top = 152
  end
end
