unit ResultUni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AxCtrls, OleCtrls, VCF1, Menus, ClipBrd, Registry, StdCtrls;
                                    
type
  TResultForm = class(TForm)
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Novo1: TMenuItem;
    Abrir1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Fechar1: TMenuItem;
    Salvar1: TMenuItem;
    Salvarcomo1: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    Imprimirseleoatual1: TMenuItem;
    Imprimirtudo1: TMenuItem;
    Editar1: TMenuItem;
    Recortar1: TMenuItem;
    Copiar1: TMenuItem;
    Colar1: TMenuItem;
    N4: TMenuItem;
    Inserir1: TMenuItem;
    Limparcontedo1: TMenuItem;
    Excluir1: TMenuItem;
    Fonte1: TMenuItem;
    Alinhamento1: TMenuItem;
    N5: TMenuItem;
    Larguradascolunas1: TMenuItem;
    Alturadaslinhas1: TMenuItem;
    N6: TMenuItem;
    Exibir1: TMenuItem;
    Barradeferramentas1: TMenuItem;
    Barradeestatus1: TMenuItem;
    Planilhas1: TMenuItem;
    Inserir2: TMenuItem;
    Excluir2: TMenuItem;
    Renomear1: TMenuItem;
    N8: TMenuItem;
    AddCl1: TMenuItem;
    CapCl1: TMenuItem;
    SaveDialog1: TSaveDialog;
    F1: TF1Book;
    Configurarimpressora1: TMenuItem;
    Configurarpgina1: TMenuItem;
    N7: TMenuItem;
    PrintDialog1: TPrintDialog;
    Fechartodas1: TMenuItem;
    PopupMenu1: TPopupMenu;
    Recortar2: TMenuItem;
    Copiar2: TMenuItem;
    Colar2: TMenuItem;
    N9: TMenuItem;
    Inserir3: TMenuItem;
    Excluir3: TMenuItem;
    Limparcontedo2: TMenuItem;
    N10: TMenuItem;
    Fonte2: TMenuItem;
    Alinhamento2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Novo1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure Abrir1Click(Sender: TObject);
    procedure Salvar1Click(Sender: TObject);
    procedure Salvarcomo1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Recortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Colar1Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure Configurarimpressora1Click(Sender: TObject);
    procedure Configurarpgina1Click(Sender: TObject);
    procedure Imprimirseleoatual1Click(Sender: TObject);
    procedure Inserir1Click(Sender: TObject);
    procedure Excluir1Click(Sender: TObject);
    procedure Limparcontedo1Click(Sender: TObject);
    procedure Fonte1Click(Sender: TObject);
    procedure Alinhamento1Click(Sender: TObject);
    procedure Inserir2Click(Sender: TObject);
    procedure Excluir2Click(Sender: TObject);
    procedure Renomear1Click(Sender: TObject);
    procedure AddCl1Click(Sender: TObject);
    procedure CapCl1Click(Sender: TObject);
    procedure Barradeferramentas1Click(Sender: TObject);
    procedure F1SelChange(Sender: TObject);
    procedure F1Modified(Sender: TObject);
    procedure Fechartodas1Click(Sender: TObject);
    procedure Editar1Click(Sender: TObject);
    procedure Barradeestatus1Click(Sender: TObject);
    procedure Arquivo1Click(Sender: TObject);
    procedure Larguradascolunas1Click(Sender: TObject);
    procedure Alturadaslinhas1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
  public
   PathResult:String;
   procedure Open(const AFileName: string);
   procedure ClipboardChanged;
  end;

var
  ResultForm: TResultForm;

implementation
Uses Unit1, InsertUni, AlinhaUni, ColunaUni;

{$R *.dfm}

procedure TResultForm.ClipboardChanged;
begin
if (Clipboard.HasFormat(CF_TEXT)) then begin
 Colar1.Enabled:=True;
 Form1.TBColar.Enabled:=True;
end else begin
 Colar1.Enabled:=False;
 Form1.TBColar.Enabled:=False;
end;
end;

procedure TResultForm.Open(const AFileName: string);
var i:SmallInt;
begin
i:=4;
PathResult:=AFileName;
Caption:='Resultado - '+AFileName;
F1.Read(PathResult,i);
F1.Modified:=False;
Form1.FST1.Panels[1].Text:='';
end;

procedure TResultForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.AjeitarSaida;
Action:=caFree;
end;

procedure TResultForm.FormActivate(Sender: TObject);
begin
if F1.Modified then Form1.FST1.Panels[1].Text:='Modificado' else Form1.FST1.Panels[1].Text:='';
ClipboardChanged;
Form1.AjeitarEntrada;
end;

procedure TResultForm.FormCloseQuery(Sender: TObject;var CanClose: Boolean);
begin
if Pos('Sem nome',Caption)<>0 then begin CanClose:=True; Exit; end;
if F1.Modified then begin
 case MessageDlg('Salvar mudanças em "'+Caption+'"?',mtConfirmation,[mbYes,mbNo, mbCancel],0) of
  idYes: Salvar1Click(Self);
  idCancel: CanClose := False;
 end;
end;
end;

procedure TResultForm.Novo1Click(Sender: TObject);
begin
Form1.Novo1Click(Sender);
end;

procedure TResultForm.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
var i,j:integer;
begin
i:=GetAsyncKeyState(VK_CONTROL);
j:=Msg.CharCode;
if (j=Ord('C')) and (i<>0) then begin
 if not (Clipboard.HasFormat(CF_TEXT)) then Abort;
 F1.EditCopy;
 ClipboardChanged;
 Abort;
end;
if (j=Ord('X')) and (i<>0) then begin
 if not (Clipboard.HasFormat(CF_TEXT)) then Abort;
 F1.EditCut;
 ClipboardChanged;
 Abort;
end;
if (j=Ord('V')) and (i<>0) then begin
 if not (Clipboard.HasFormat(CF_TEXT)) then Abort;
 F1.EditPasteValues;
 Abort;
end;
i:=GetAsyncKeyState(VK_DELETE);
if i<>0 then begin
 F1.EditClear(F1ClearAll);
 Abort;
end;
end;

procedure TResultForm.Abrir1Click(Sender: TObject);
begin
Form1.Abrir1Click(Sender);
end;

procedure TResultForm.Salvar1Click(Sender: TObject);
var i:SmallInt;
begin
i:=4;
if PathResult='Sem nome' then SalvarComo1Click(Sender) else begin
 F1.Write(PathResult,i);
 F1.Modified:=False;
 Form1.FST1.Panels[1].Text:='';
end;
end;

procedure TResultForm.Salvarcomo1Click(Sender: TObject);
begin
SaveDialog1.FileName:=PathResult;
if SaveDialog1.Execute then begin
 PathResult:=SaveDialog1.FileName;
 Caption:='Resultado - '+PathResult;
 Salvar1Click(Sender);
 F1.Modified:=False;
 Form1.FST1.Panels[1].Text:='';
end;
end;

procedure TResultForm.Sair1Click(Sender: TObject);
begin
Form1.Sair1Click(Sender);
end;

procedure TResultForm.Recortar1Click(Sender: TObject);
begin
F1.EditCut;
ClipboardChanged;
end;

procedure TResultForm.Copiar1Click(Sender: TObject);
begin
F1.EditCopy;
ClipboardChanged;
end;

procedure TResultForm.Colar1Click(Sender: TObject);
begin
F1.EditPasteValues;
end;

procedure TResultForm.Fechar1Click(Sender: TObject);
begin
Close;
end;

procedure TResultForm.Configurarimpressora1Click(Sender: TObject);
begin
Form1.PSTD1.Execute;
end;

procedure TResultForm.Configurarpgina1Click(Sender: TObject);
begin
Form1.Configurarpgina1Click(Sender);
end;

procedure TResultForm.Imprimirseleoatual1Click(Sender: TObject);
var Ini: TRegIniFile;
begin
 if PrintDialog1.Execute then begin
  Ini:=TRegIniFile.Create('\Software\'+Application.Title);
 try
  case Ini.ReadInteger('ConfPag','HInt',1) of
   1:F1.PrintHeader:='&C'+Ini.ReadString('ConfPag','Header','');
   2:F1.PrintHeader:='&A';
   3:F1.PrintHeader:='&F';
   4:F1.PrintHeader:='&P';
   5:F1.PrintHeader:='&D';
  end;
  case Ini.ReadInteger('ConfPag','FInt',1) of
   1:F1.PrintFooter:='&C'+Ini.ReadString('ConfPag','Footer','');
   2:F1.PrintFooter:='&A';
   3:F1.PrintFooter:='&F';
   4:F1.PrintFooter:='&P';
   5:F1.PrintFooter:='&D';
  end;
   F1.PrintTopMargin:=StrToFloat(Ini.ReadString('ConfPag','Topo','1,0'));
   F1.PrintBottomMargin:=StrToFloat(Ini.ReadString('ConfPag','Fundo','1,0'));
   F1.PrintLeftMargin:=StrToFloat(Ini.ReadString('ConfPag','Esq','0,75'));
   F1.PrintRightMargin:=StrToFloat(Ini.ReadString('ConfPag','Dir','0,75'));
   F1.SetPrintScale(Ini.ReadInteger('ConfPag','Zoom',100),False,1,1);
   F1.PrintLandscape:=Ini.ReadBool('ConfPag','Lands',False);
   F1.PrintGridLines:=Ini.ReadBool('ConfPag','Grid',False);
   F1.PrintColHeading:=Ini.ReadBool('ConfPag','Col',False);
   F1.PrintRowHeading:=Ini.ReadBool('ConfPag','Lin',False);
   F1.PrintNoColor:=Ini.ReadBool('ConfPag','PB',False);
 finally
  Ini.Free;
 end;
try
if Sender=Imprimirseleoatual1 then F1.SetPrintAreaFromSelection;
F1.FilePrint(False);
except on Exception do
MessageDlg('Ocorreu um erro durante a tentativa de imprimir.'+#13#13+
'Verifique se a planilha ativa não está vazia e se a impressora está preparada.', mtError, [mbOK], 0);
end;
end;
end;

procedure TResultForm.Inserir1Click(Sender: TObject);
begin
try
if Pos('16384',F1.Selection)>0 then begin
 F1.EditInsert(4);
 Exit;
end;
if (Pos('A',F1.Selection)>0) and (Pos('IV',F1.Selection)>0) then begin
 F1.EditInsert(3);
 Exit;
end;
with TInsertForm.Create(Self) do
 try
 Caption:='Inserir';
 GroupBox1.Caption:='Inserir';
 if ShowModal=mrOK then begin
  if RadioButton1.Checked then F1.EditInsert(1);
  if RadioButton2.Checked then F1.EditInsert(2);
  if RadioButton3.Checked then F1.EditInsert(3);
  if RadioButton4.Checked then F1.EditInsert(4);
 end;
 finally free;
end;
except
on exception do
MessageDlg('Erro de inserção de células!!!', mtError, [mbOk], 0);
end;
end;

procedure TResultForm.Excluir1Click(Sender: TObject);
begin
if Pos('16384',F1.Selection)>0 then begin
 F1.EditDelete(4);
 Exit;
end;
if (Pos('A',F1.Selection)>0) and (Pos('IV',F1.Selection)>0) then begin
 F1.EditDelete(3);
 Exit;
end;
with TInsertForm.Create(Self) do
try
Caption:='Excluir';
GroupBox1.Caption:='Excluir';
if ShowModal=mrOK then begin
 if RadioButton1.Checked then F1.EditDelete(1);
 if RadioButton2.Checked then F1.EditDelete(2);
 if RadioButton3.Checked then F1.EditDelete(3);
 if RadioButton4.Checked then F1.EditDelete(4);
end;
finally free;
end;
end;

procedure TResultForm.Limparcontedo1Click(Sender: TObject);
begin
F1.EditClear(F1ClearAll);
end;

procedure TResultForm.Fonte1Click(Sender: TObject);
begin
F1.FormatFontDlg;
end;

procedure TResultForm.Alinhamento1Click(Sender: TObject);
var aH,aV,Orient:SmallInt;
WP:WordBool;
begin
F1.GetAlignment(aH,WP,aV,Orient);
with TAlinhaForm.Create(Self) do try
 case aH of
  1:RadioButton1.Checked:=True;
  2:RadioButton2.Checked:=True;
  3:RadioButton3.Checked:=True;
  4:RadioButton4.Checked:=True;
 end;
 case aV of
  1:RadioButton6.Checked;
  2:RadioButton7.Checked;
  3:RadioButton8.Checked;
 end;
 CheckBox1.Checked:=WP;
 if ShowModal=mrOK then begin
  Orient:=0;
  WP:=CheckBox1.Checked;
  if RadioButton1.Checked then aH:=1;
  if RadioButton2.Checked then aH:=2;
  if RadioButton3.Checked then aH:=3;
  if RadioButton4.Checked then aH:=4;
  if RadioButton6.Checked then aV:=1;
  if RadioButton7.Checked then aV:=2;
  if RadioButton8.Checked then aV:=3;
  F1.SetAlignment(aH,WP,aV,Orient);
 end;
 finally free;
end;
end;

procedure TResultForm.Inserir2Click(Sender: TObject);
begin
F1.InsertSheets(F1.Sheet,1);
F1.SheetName[F1.Sheet]:='Plan'+IntToStr(F1.NumSheets);
end;

procedure TResultForm.Excluir2Click(Sender: TObject);
begin
if F1.NumSheets=1 then begin
 MessageDlg('Existe somente uma planilha.'+#13+'Impossível excluí-la!!!', mtError, [mbOk], 0);
 Exit;
end;
if MessageDlg('Excluir planilha "'+F1.SheetName[F1.Sheet]+'"?', mtConfirmation, [mbOk,mbCancel], 0)=mrOK then
 F1.EditDeleteSheets;
end;

procedure TResultForm.Renomear1Click(Sender: TObject);
var S:String;
begin
S:=InputBox('Renomear planilha','Novo nome da planilha',F1.SheetName[F1.Sheet]);
F1.SheetName[F1.Sheet]:=S;
end;

procedure TResultForm.AddCl1Click(Sender: TObject);
var Ini:TReginifile;
i,j:integer;
begin
Ini:=TRegIniFile.Create('\Software\'+Application.Title);
j:=Ini.ReadInteger('Padroes','Numero',3);
if j=3 then begin
 Ini.Free;
 MessageDlg('Não existem Classes Padrão definidas!', mtError, [mbOK], 0);
 exit;
end;
F1.SetActiveCell(1,1);
F1.EditInsert(3);
for i:=1 to j do
 F1.EntryRC[1,i+1]:=Ini.ReadString('Padroes',IntToStr(i),'');
Ini.Free;
MessageDlg(IntToStr(j)+' classes adicionadas.',mtInformation,[mbOK],0);
end;

procedure TResultForm.CapCl1Click(Sender: TObject);
var Ini:TReginifile;
i:integer;
begin
Ini:=TRegIniFile.Create('\Software\'+Application.Title);
for i:=1 to 96 do
 if (F1.EntryRC[1,i+1]='') then Break else
  Ini.WriteString('Padroes',IntToStr(i),F1.EntryRC[1,i+1]);
Ini.WriteInteger('Padroes','Numero',i-1);
Ini.Free;
end;

procedure TResultForm.Barradeferramentas1Click(Sender: TObject);
begin
Form1.Barradeferramentas1Click(Self);
end;

procedure TResultForm.F1SelChange(Sender: TObject);
begin
Form1.FST1.Panels[0].Text:=F1.Selection;
end;

procedure TResultForm.F1Modified(Sender: TObject);
begin
Form1.FST1.Panels[1].Text:='Modificado';
end;

procedure TResultForm.Fechartodas1Click(Sender: TObject);
begin
Form1.FecharTodas;
end;

procedure TResultForm.Editar1Click(Sender: TObject);
begin
ClipboardChanged;
end;

procedure TResultForm.Barradeestatus1Click(Sender: TObject);
begin
Form1.Barradeestatus1Click(Self);
end;

procedure TResultForm.Arquivo1Click(Sender: TObject);
begin
Form1.Arquivo1Click(Self);
Form1.MRU1.RecentMenu:=Arquivo1;
end;

procedure TResultForm.Larguradascolunas1Click(Sender: TObject);
var ap:SmallInt;
begin
with TColunaForm.Create(Self) do try
 Caption:='Colunas';
 GroupBox1.Caption:='Altura padrão das Colunas';
 Label1.Caption:='Default = 2343';
 ap:=F1.ColWidth[F1.Col];
 Edit1.Text:=IntToStr(ap);
 if ShowModal=mrOK then begin
  if CheckBox1.Checked then F1.SetColWidthAuto(-1,-1,-1,-1,true) else begin
    ap:=StrToInt(Edit1.Text);
    F1.SetColWidth(1,256,ap,false);
  end;
 end;
finally free;
end;
end;

procedure TResultForm.Alturadaslinhas1Click(Sender: TObject);
var ap:SmallInt;
begin
with TColunaForm.Create(Self) do try
 Caption:='Linhas';
 GroupBox1.Caption:='Largura padrão das Linhas';
 Label1.Caption:='Default = 255';
 ap:=F1.RowHeight[F1.Row];
 Edit1.Text:=IntToStr(ap);
 if ShowModal=mrOK then begin
  if CheckBox1.Checked then F1.SetRowHeightAuto(-1,-1,-1,-1,true) else begin
   ap:=StrToInt(Edit1.Text);
   F1.SetRowHeight(1,16384,ap,true);
  end;
 end;
finally free;
end;
end;

procedure TResultForm.PopupMenu1Popup(Sender: TObject);
begin
ClipboardChanged;
end;

end.
