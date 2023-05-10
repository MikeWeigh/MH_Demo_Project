unit dm.Main;

interface

uses
  System.SysUtils,
  System.Classes,
  Aurelius.Sql.Firebird,
  Aurelius.Schema.Firebird,
  Aurelius.Drivers.FireDac,
  FireDac.Stan.Intf,
  FireDac.Stan.Option,
  FireDac.Stan.Error,
  FireDac.UI.Intf,
  FireDac.Phys.Intf,
  FireDac.Stan.Def,
  FireDac.Stan.Pool,
  FireDac.Stan.Async,
  FireDac.Phys,
  FireDac.Phys.FB,
  FireDac.Phys.FBDef,
  FireDac.VCLUI.Wait,
  Aurelius.Engine.ObjectManager,
  Aurelius.Linq,
  Aurelius.Comp.Manager,
  Data.DB,
  Aurelius.Bind.BaseDataset,
  Aurelius.Bind.Dataset,
  FireDac.Comp.Client,
  Aurelius.Comp.Connection,
  Aurelius.Engine.DatabaseManager,
  Aurelius.Comp.DBSchema,
  Aurelius.Events.Manager,
  Aurelius.Comp.ModelEvents,
  CodeSiteLogging;

type
  TdmMain = class( TDataModule )
    AureliusConnection1: TAureliusConnection;
    FDConnection1: TFDConnection;
    adsCustomer: TAureliusDataset;
    Manager: TAureliusManager;
    Schema: TAureliusDBSchema;
    AureliusModelEvents1: TAureliusModelEvents;
    adsCustomerSelf: TAureliusEntityField;
    adsCustomerId: TIntegerField;
    adsCustomerFirstName: TStringField;
    adsCustomerLastName: TStringField;
    adsCustomerAddress1: TStringField;
    adsCustomerAddress2: TStringField;
    adsCustomerCity: TStringField;
    adsCustomerPostCode: TStringField;
    adsCustomerContactNo: TStringField;
    adsCustomerDateOfBirth: TDateField;
    adsLabel: TAureliusDataset;
    adsLabelSelf: TAureliusEntityField;
    adsLabelId: TIntegerField;
    adsLabelLabelName: TStringField;
    adsArtist: TAureliusDataset;
    adsArtistSelf: TAureliusEntityField;
    adsArtistId: TIntegerField;
    adsArtistArtistName: TStringField;
    adsArtistRecordLabel: TAureliusEntityField;
    adsArtistLabelLookup: TStringField;
    adsAlbum: TAureliusDataset;
    adsAlbumSelf: TAureliusEntityField;
    adsAlbumId: TIntegerField;
    adsAlbumAlbumName: TStringField;
    adsAlbumAlbumPrice: TCurrencyField;
    adsAlbumArtist: TAureliusEntityField;
    adsArtistAlbums: TDataSetField;
    procedure DataModuleCreate( Sender: TObject );
    procedure AureliusModelEvents1SQLExecuting( Sender: TObject;
      Args: TSQLExecutingArgs );
    procedure adsCustomerBeforeOpen( Dataset: TDataSet );
    procedure adsLabelBeforeOpen( Dataset: TDataSet );
    procedure adsArtistBeforeOpen(DataSet: TDataSet);
    procedure adsAlbumBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmMain: TdmMain;

implementation

uses
  entities;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmMain.adsAlbumBeforeOpen(DataSet: TDataSet);
begin
  TAureliusDataset( Dataset ).SetSourceCriteria( Manager.Find< TAlbum > );
end;

procedure TdmMain.adsArtistBeforeOpen(DataSet: TDataSet);
begin
 TAureliusDataset( Dataset ).SetSourceCriteria( Manager.Find< TArtist > );
end;

procedure TdmMain.adsCustomerBeforeOpen( Dataset: TDataSet );
begin
  TAureliusDataset( Dataset ).SetSourceCriteria( Manager.Find< TCustomer > );
end;

procedure TdmMain.adsLabelBeforeOpen( Dataset: TDataSet );
begin
  TAureliusDataset( Dataset ).SetSourceCriteria( Manager.Find< TLabel > );
end;

procedure TdmMain.AureliusModelEvents1SQLExecuting( Sender: TObject;
  Args: TSQLExecutingArgs );
begin
  CodeSite.Send( 'Args.Sql', Args.Sql );
  if Assigned( Args.Params ) then

    for var p in Args.Params do
        CodeSite.Send( 'p.ToString', p.ToString );
end;

procedure TdmMain.DataModuleCreate( Sender: TObject );
begin
  Schema.UpdateDatabase;
  adsCustomer.Manager := Manager.ObjManager;
  adsLabel.Manager    := Manager.ObjManager;
  adsArtist.Manager  := Manager.ObjManager;
  adsAlbum.Manager  := Manager.ObjManager;
  adsCustomer.Open;
  adsLabel.Open;
  adsArtist.Open;
  adsAlbum.Open;
end;

end.