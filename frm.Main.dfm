object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 445
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 185
    Height = 439
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 435
    object btnOrders: TButton
      AlignWithMargins = True
      Left = 4
      Top = 157
      Width = 177
      Height = 44
      Align = alTop
      Caption = 'Orders'
      TabOrder = 0
      OnClick = btnOrdersClick
    end
    object btnCustomers: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 177
      Height = 45
      Align = alTop
      Caption = 'Customers'
      TabOrder = 1
      OnClick = btnCustomersClick
    end
    object btnAlbums: TButton
      AlignWithMargins = True
      Left = 4
      Top = 106
      Width = 177
      Height = 45
      Align = alTop
      Caption = 'Albums'
      TabOrder = 2
      OnClick = btnAlbumsClick
    end
    object btnArtists: TButton
      AlignWithMargins = True
      Left = 4
      Top = 55
      Width = 177
      Height = 45
      Align = alTop
      Caption = 'Artists'
      TabOrder = 3
      OnClick = btnArtistsClick
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 194
    Top = 3
    Width = 429
    Height = 439
    ActivePage = tsCustomer
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabWidth = 100
    ExplicitWidth = 427
    ExplicitHeight = 435
    object tsCustomer: TTabSheet
      Caption = 'Customers'
      object grdCustomers: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 415
        Height = 403
        Align = alClient
        DataSource = dsCustomer
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tsArtists: TTabSheet
      Caption = 'Artists'
      ImageIndex = 1
      object grdArtists: TDBGrid
        Left = 0
        Top = 0
        Width = 421
        Height = 409
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tsAlbums: TTabSheet
      Caption = 'Albums'
      ImageIndex = 2
      object grdAlbums: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 415
        Height = 403
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tsOrders: TTabSheet
      Caption = 'Orders'
      ImageIndex = 3
      object grdOrders: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 415
        Height = 403
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
  end
  object dsCustomer: TDataSource
    DataSet = dmMain.adsCustomer
    Left = 254
    Top = 117
  end
end