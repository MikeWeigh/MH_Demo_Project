unit frm.Import;

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
  FireDAC.Stan.Intf,
  FireDAC.Comp.BatchMove,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  dm.Main, FireDAC.Comp.BatchMove.DataSet, FireDAC.Comp.BatchMove.SQL,
  FireDAC.Comp.BatchMove.Text;

type
  TForm1 = class( TForm )
    FDBatchMove1: TFDBatchMove;
    FDBatchMoveTextReader1: TFDBatchMoveTextReader;
    FDBatchMoveSQLWriter1: TFDBatchMoveSQLWriter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
