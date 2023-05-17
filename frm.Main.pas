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
  MikeGrid,
  entities,
  Aurelius.Engine.ObjectManager,
  Aurelius.Linq,
  Aurelius.Comp.Manager,
  System.Generics.Collections,
  CodeSiteLogging,
  ObjectArray,
  Aurelius.Criteria.Base,
  Aurelius.Criteria.Linq,
  frm.Pagination;

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
    dsCustomer: TDataSource;
    dsArtists: TDataSource;
    dsLabel: TDataSource;
    btnLabels: TButton;
    tsLabels: TTabSheet;
    grdLabel: TDBGrid;
    grdArtistsAlbums: TDBGrid;
    dsAlbum: TDataSource;
    dsInvoice: TDataSource;
    dsInvoiceItem: TDataSource;
    grdInvoice: TDBGrid;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    dsAlbumLookup: TDataSource;
    dsInvoiceAll: TDataSource;
    frmMainManager: TAureliusManager;
    Button1: TButton;
    procedure btnCustomersClick( Sender: TObject );
    procedure btnArtistsClick( Sender: TObject );
    procedure btnAlbumsClick( Sender: TObject );
    procedure btnOrdersClick( Sender: TObject );
    procedure btnLabelsClick( Sender: TObject );
    procedure grdInvoiceEditButtonClick( Sender: TObject );
    procedure Button1Click(Sender: TObject);
  end;
var
  frmMain: TfrmMain;

implementation

{$R *.dfm}


uses
  form.InvoiceList;

procedure TfrmMain.btnCustomersClick( Sender: TObject );
begin
  tsCustomer.Visible      := True;
  PageControl1.ActivePage := tsCustomer;
end;

procedure TfrmMain.btnLabelsClick( Sender: TObject );
begin
  tsLabels.Visible        := True;
  PageControl1.ActivePage := tsLabels;
end;

procedure TfrmMain.btnOrdersClick( Sender: TObject );
begin
  tsOrders.Visible        := True;
  PageControl1.ActivePage := tsOrders;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
 var
 frmPagination: TFrmPagination;
 frmPagination := TFrmPagination.Create( Self );
 frmPagination.Show;
end;

function ArrayToString(const a: array of Char): string;
begin
  if Length(a)>0 then
    SetString(Result, PChar(@a[0]), Length(a))
  else
    Result := '';
end;

{ TODO : Fix this on Monday }
procedure TfrmMain.grdInvoiceEditButtonClick( Sender: TObject );
var
  frmInvoiceList: TfrmInvoiceList;
  Results       : TList< TInvoiceItem >;
  MyCriteria    : TCriteria< TInvoiceItem >;
 // Invoice : TInvoice;
  i: Integer;
begin
  frmInvoiceList := TfrmInvoiceList.Create( Self );
  begin
    MyCriteria := frmMainManager.Find< TInvoiceItem >
      .Add( Linq[ 'Invoice' ] = grdInvoice.Fields[1].AsString);
    Results := MyCriteria.List;
   for i := 0 to Results.Count -1 do
   begin
    CodeSite.Send( 'Result', Results[i].Album.AlbumName);
    frmInvoiceList.Memo1.Lines.Insert( 0, Results[i].Album.AlbumName);
   end;

   CodeSite.Send( 'Result', Results.Count);
   // frmInvoiceList.Memo1.Lines.Insert( 0, Results.List)
  // frmInvoiceList.ListBox1.Items := Results.;
     end;
  try
    frmInvoiceList.ShowModal;
  finally
    frmInvoiceList.Free;
  end;
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
