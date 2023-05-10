unit entities;

interface

uses
  Aurelius.Mapping.Attributes,
  Aurelius.Types.Proxy,
  Aurelius.Types.Nullable,
  Generics.Collections,
  SysUtils;

type
  TArtist = class;
  TAlbum = class;

  [ Entity, Automapping ]
  TCustomer = class
  private
    FId         : Integer;
    FFirstName  : string;
    FLastName   : string;
    FAddress1   : Nullable< string >;
    FAddress2   : Nullable< string >;
    FCity       : Nullable< string >;
    FPostCode   : Nullable< string >;
    FContactNo  : Nullable< string >;
    FDateOfBirth: Nullable< TDate >;
  public
    property Id         : Integer read FId write FId;
    property FirstName  : string read FFirstName write FFirstName;
    property LastName   : string read FLastName write FLastName;
    property Address1   : Nullable< string > read FAddress1 write FAddress1;
    property Address2   : Nullable< string > read FAddress2 write FAddress2;
    property City       : Nullable< string > read FCity write FCity;
    property PostCode   : Nullable< string > read FPostCode write FPostCode;
    property ContactNo  : Nullable< string > read FContactNo write FContactNo;
    property DateOfBirth: Nullable< TDate > read FDateOfBirth write FDateOfBirth;
  end;

  [ Entity, Automapping ]
  TLabel = class
  private
    FId       : Integer;
    FLabelName: string;
    [ ManyValuedAssociation( [ ], CascadeTypeAllRemoveOrphan, 'FRecordLabel' ) ]
    FArtist: Proxy< TList< TArtist > >;
  public
    constructor Create;
    destructor Destroy; override;
  public
    property Id       : Integer read FId write FId;
    property LabelName: string read FLabelName write FLabelName;
  end;

  [ Entity, Automapping ]
  TArtist = class
  private
    FId         : Integer;
    FArtistName : string;
    FRecordLabel: Proxy< TLabel >;
    [ ManyValuedAssociation( [ ], CascadeTypeAllRemoveOrphan, 'FArtist' ) ]
    FAlbums: Proxy< TList< TAlbum > >;
    function GetRecordLabel: TLabel;
    procedure SetRecordLabel( const Value: TLabel );
    function GetAlbums: TList< TAlbum >;
   public
    constructor Create;
    destructor Destroy; override;
  public
    property Id         : Integer read FId write FId;
    property ArtistName : string read FArtistName write FArtistName;
    property RecordLabel: TLabel read GetRecordLabel write SetRecordLabel;
    property Albums : TList< TAlbum > read GetAlbums;
  end;

  [ Entity, Automapping ]
  TAlbum = class
  private
    FId        : Integer;
    FAlbumName : string;
    FAlbumPrice: Currency;
    FArtist    : Proxy< TArtist >;
    function GetArtist: TArtist;
    procedure SetArtist(const Value: TArtist);
  public
    constructor Create;
    destructor Destroy; override;
  public
    property Id        : Integer read FId write FId;
    property AlbumName : string read FAlbumName write FAlbumName;
    property AlbumPrice: Currency read FAlbumPrice write FAlbumPrice;
    property Artist    : TArtist read GetArtist write SetArtist;
  end;

implementation

{ TLabel }

constructor TLabel.Create;
begin
  inherited;
end;

destructor TLabel.Destroy;
begin
  inherited;
end;

{ TArtist }

constructor TArtist.Create;
begin
 inherited;
 FAlbums.SetInitialValue( TList< TAlbum >.Create );
end;

destructor TArtist.Destroy;
begin

  inherited;
end;

function TArtist.GetAlbums: TList<TAlbum>;
begin
  Result := FAlbums.Value;
end;

function TArtist.GetRecordLabel: TLabel;
begin
  Result := FRecordLabel.Value;
end;

procedure TArtist.SetRecordLabel( const Value: TLabel );
begin
  FRecordLabel.Value := Value;
end;

{ TAlbum }

constructor TAlbum.Create;
begin
  inherited;
end;

destructor TAlbum.Destroy;
begin

  inherited;
end;

function TAlbum.GetArtist: TArtist;
begin
 Result := FArtist.Value;
end;

procedure TAlbum.SetArtist(const Value: TArtist);
begin
  FArtist.Value := Value;
end;

initialization

RegisterEntity( TCustomer );
RegisterEntity( TLabel );
RegisterEntity( TArtist );
RegisterEntity(TAlbum);

end.
