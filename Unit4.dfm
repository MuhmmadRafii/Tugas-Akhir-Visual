object Form4: TForm4
  Left = 214
  Top = 196
  Width = 1305
  Height = 675
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 72
    Top = 112
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object lbl2: TLabel
    Left = 72
    Top = 152
    Width = 44
    Height = 13
    Caption = 'TELEPON'
  end
  object lbl3: TLabel
    Left = 64
    Top = 72
    Width = 91
    Height = 13
    Caption = 'NAMA PELANGGAN'
  end
  object edt1: TEdit
    Left = 184
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 184
    Top = 112
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 80
    Top = 208
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 184
    Top = 208
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 208
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object dbgrd1: TDBGrid
    Left = 64
    Top = 264
    Width = 329
    Height = 73
    DataSource = ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt3: TEdit
    Left = 184
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 6
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
    Left = 440
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 440
    Top = 144
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 440
    Top = 88
  end
end
