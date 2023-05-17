object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'frmMain'
  ClientHeight = 445
  ClientWidth = 776
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
    object Button1: TButton
      Left = 4
      Top = 377
      Width = 181
      Height = 40
      Caption = 'Open Customer Grid'
      TabOrder = 5
      OnClick = Button1Click
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 194
    Top = 3
    Width = 579
    Height = 439
    ActivePage = tsCustomer
    Align = alClient
    MultiLine = True
    TabOrder = 1
    TabWidth = 100
    ExplicitWidth = 577
    ExplicitHeight = 435
    object tsCustomer: TTabSheet
      Caption = 'Customers'
      object Splitter1: TSplitter
        Left = 220
        Top = 0
        Height = 280
        ExplicitLeft = 216
        ExplicitTop = 120
        ExplicitHeight = 100
      end
      object Splitter2: TSplitter
        Left = 223
        Top = 0
        Height = 280
        ExplicitLeft = 336
        ExplicitTop = 176
        ExplicitHeight = 100
      end
      object grdCustomers: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 214
        Height = 274
        Align = alLeft
        DataSource = dsCustomer
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 229
        Top = 3
        Width = 339
        Height = 274
        Align = alClient
        DataSource = dsInvoice
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 280
        Width = 571
        Height = 129
        Align = alBottom
        DataSource = dsInvoiceItem
        TabOrder = 2
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
            FieldName = 'Invoice'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Album'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'AlbumLookup'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantity'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GrossPrice'
            Visible = True
          end>
      end
    end
    object tsArtists: TTabSheet
      Caption = 'Artists'
      ImageIndex = 1
      object grdArtists: TDBGrid
        Left = 0
        Top = 0
        Width = 571
        Height = 245
        Align = alClient
        DataSource = dsArtists
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object grdArtistsAlbums: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 248
        Width = 565
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
            Width = 64
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
        Width = 565
        Height = 403
        Align = alClient
        DataSource = dsAlbumLookup
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
      object grdInvoice: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 565
        Height = 403
        Align = alClient
        DataSource = dsInvoiceAll
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnEditButtonClick = grdInvoiceEditButtonClick
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
            FieldName = 'InvoiceNo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InvoiceDate'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Items'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Customer'
            Visible = False
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'Info'
            Visible = True
          end>
      end
    end
    object tsLabels: TTabSheet
      Caption = 'Labels'
      ImageIndex = 4
      object grdLabel: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 565
        Height = 403
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
    Left = 430
    Top = 61
  end
  object dsAlbum: TDataSource
    DataSet = dmMain.adsAlbum
    Left = 494
    Top = 61
  end
  object dsInvoice: TDataSource
    DataSet = dmMain.adsInvoice
    Left = 566
    Top = 61
  end
  object dsInvoiceItem: TDataSource
    DataSet = dmMain.adsInvoiceItem
    Left = 638
    Top = 61
  end
  object dsAlbumLookup: TDataSource
    DataSet = dmMain.adsAlbumLookup
    Left = 494
    Top = 125
  end
  object dsInvoiceAll: TDataSource
    DataSet = dmMain.adsInvoiceAll
    Left = 566
    Top = 125
  end
  object frmMainManager: TAureliusManager
    Connection = dmMain.AureliusConnection1
    Left = 318
    Top = 197
  end
end
