object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 445
  ClientWidth = 706
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
      Top = 207
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
    object btnLabels: TButton
      AlignWithMargins = True
      Left = 4
      Top = 157
      Width = 177
      Height = 44
      Align = alTop
      Caption = 'Labels'
      TabOrder = 4
      OnClick = btnLabelsClick
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 194
    Top = 3
    Width = 509
    Height = 439
    ActivePage = TabSheet1
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabWidth = 100
    object tsCustomer: TTabSheet
      Caption = 'Customers'
      object grdCustomers: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 495
        Height = 383
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
        Width = 501
        Height = 225
        Align = alClient
        DataSource = dsArtists
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Self'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ArtistName'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecordLabel'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'LabelLookup'
            Visible = True
          end>
      end
      object grdArtistsAlbums: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 228
        Width = 495
        Height = 158
        Align = alBottom
        DataSource = dsAlbum
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Self'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AlbumName'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AlbumPrice'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Artist'
            Visible = False
          end>
      end
    end
    object tsAlbums: TTabSheet
      Caption = 'Albums'
      ImageIndex = 2
      object grdAlbums: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 495
        Height = 383
        Align = alClient
        DataSource = dsAlbum
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
        Width = 495
        Height = 383
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object tsLabels: TTabSheet
      Caption = 'Labels'
      ImageIndex = 4
      object grdLabel: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 495
        Height = 383
        Align = alClient
        DataSource = dsLabel
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Test'
      ImageIndex = 5
    end
  end
  object dsCustomer: TDataSource
    DataSet = dmMain.adsCustomer
    Left = 246
    Top = 61
  end
  object dsArtists: TDataSource
    DataSet = dmMain.adsArtist
    Left = 350
    Top = 61
  end
  object dsLabel: TDataSource
    DataSet = dmMain.adsLabel
    Left = 438
    Top = 61
  end
  object dsAlbum: TDataSource
    DataSet = dmMain.adsAlbum
    Left = 518
    Top = 61
  end
end
