unit entities;

interface

uses
  Aurelius.Mapping.Attributes,
  Aurelius.Types.Proxy,
  Aurelius.Types.Nullable,
  Generics.Collections;

type

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

implementation

initialization

RegisterEntity( TCustomer );

end.
