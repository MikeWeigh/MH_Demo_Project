unit frm.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Aurelius.Bind.BaseDataset,
  Aurelius.Bind.Dataset,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Tabs,
  Vcl.DockTabSet,
  AdvPageControl,
  Vcl.ComCtrls,
  dm.Main,
  cusDBGrid,

  Rtti,
  UITypes;

type
  TfrmMain = class( TForm )
    Panel1: TPanel;
    btnOrders: TButton;
    btnCustomers: TButton;
    btnAlbums: TButton;
    btnArtists: TButton;
    grdCustomers: TDBGrid;
    PageControl1: TPageControl;
    tsCustomer: TTabSheet;
    tsArtists: TTabSheet;
    tsAlbums: TTabSheet;
    tsOrders: TTabSheet;
    grdArtists: TDBGrid;
    grdAlbums: TDBGrid;
    grdOrders: TDBGrid;
    dsCustomer: TDataSource;
    dsArtists: TDataSource;
    dsLabel: TDataSource;
    btnLabels: TButton;
    tsLabels: TTabSheet;
    grdLabel: TDBGrid;
    grdArtistsAlbums: TDBGrid;
    dsAlbum: TDataSource;
    TabSheet1: TTabSheet;
    procedure btnCustomersClick( Sender: TObject );
    procedure btnArtistsClick( Sender: TObject );
    procedure btnAlbumsClick( Sender: TObject );
    procedure btnOrdersClick( Sender: TObject );
    procedure btnLabelsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}


procedure TfrmMain.btnCustomersClick( Sender: TObject );
begin
  tsCustomer.Visible      := True;
  PageControl1.ActivePage := tsCustomer;
end;

procedure TfrmMain.btnLabelsClick(Sender: TObject);
begin
  tsLabels.Visible        := True;
  PageControl1.ActivePage := tsLabels;
end;

procedure TfrmMain.btnOrdersClick( Sender: TObject );
begin
  tsOrders.Visible        := True;
  PageControl1.ActivePage := tsOrders;
end;

procedure TfrmMain.btnAlbumsClick( Sender: TObject );
begin
  tsAlbums.Visible        := True;
  PageControl1.ActivePage := tsAlbums;
end;

procedure TfrmMain.btnArtistsClick( Sender: TObject );
begin
 // tsArtists.Visible       := True;
  PageControl1.ActivePage := tsArtists;
end;

end.