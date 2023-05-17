program CustomerProject;

uses
  Vcl.Forms,
  frm.Main in 'frm.Main.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  entities in 'entities.pas',
  dm.Main in 'dm.Main.pas' {dmMain: TDataModule},
  MikeGrid in 'MikeGrid.pas',
  form.InvoiceList in 'form.InvoiceList.pas' {frmInvoiceList},
  frm.Import in 'frm.Import.pas' {Form1},
  frm.Pagination in 'frm.Pagination.pas' {frmPagination};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmMain, dmMain);
  Application.CreateForm(TfrmInvoiceList, frmInvoiceList);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmPagination, frmPagination);
  Application.Run;
end.
