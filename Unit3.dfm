object Form3: TForm3
  Left = 1011
  Top = 343
  Width = 471
  Height = 367
  Caption = 'Menu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 8
    Top = 8
    object Menu1: TMenuItem
      Caption = 'Menu'
      object produk: TMenuItem
        Caption = 'Data Produk'
        OnClick = produkClick
      end
      object pesanan: TMenuItem
        Caption = 'Data Pesanan'
        OnClick = pesananClick
      end
      object DataPelanggan1: TMenuItem
        Caption = 'Data Pelanggan'
        OnClick = DataPelanggan1Click
      end
      object DataFaktur1: TMenuItem
        Caption = 'Data Faktur'
        OnClick = DataFaktur1Click
      end
      object DataDetailPesan1: TMenuItem
        Caption = 'Data Detail Pesan'
        OnClick = DataDetailPesan1Click
      end
    end
  end
end
