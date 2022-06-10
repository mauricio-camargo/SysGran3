program Sysgran3;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ResultUni in 'ResultUni.pas' {ResultForm},
  PaginaUni in 'PaginaUni.pas' {PaginaForm},
  InsertUni in 'InsertUni.pas' {InsertForm},
  OpcoesUni in 'OpcoesUni.pas' {OpcoesForm},
  AboutUni in 'AboutUni.pas' {AboutForm},
  AlinhaUni in 'AlinhaUni.pas' {AlinhaForm},
  ColunaUni in 'ColunaUni.pas' {ColunaForm},
  AnaUni in 'AnaUni.pas' {AnaForm},
  GrafUni in 'GrafUni.pas' {GrafForm},
  PlaniUni in 'PlaniUni.pas' {PlaniForm},
  ConfigGraf in 'ConfigGraf.pas' {ConfigGrafForm};

{$R *.res}

begin
  AboutForm:=TAboutForm.Create(Application);
  AboutForm.Show;
  AboutForm.Update;
  Application.Initialize;
  Application.Title := 'Sysgran3';
  Application.HelpFile := 'C:\Delphi6\Sysgran3\Sysgran.hlp';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
