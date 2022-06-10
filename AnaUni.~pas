unit AnaUni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, RxCombos, RXSpin;

type
  TAnaForm = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    RBFreq: TRadioButton;
    RBShep: TRadioButton;
    RBPej: TRadioButton;
    RBHist: TRadioButton;
    RBProb: TRadioButton;
    RBBivar: TRadioButton;
    GroupBox3: TGroupBox;
    ListBox1: TListBox;
    Button1: TButton;
    Bevel1: TBevel;
    Bevel3: TBevel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Panel1: TPanel;
    Label5: TLabel;
    ComboBox4: TComboBox;
    ComboBox2: TComboBox;
    Label6: TLabel;
    ComboBox3: TComboBox;
    Panel2: TPanel;
    CBLabel: TCheckBox;
    ColorComboBox1: TColorComboBox;
    Label1: TLabel;
    ColorComboBox2: TColorComboBox;
    Label2: TLabel;
    RxSpinEdit1: TRxSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RBFreqClick(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AnaForm: TAnaForm;

implementation

{$R *.DFM}


procedure TAnaForm.Button1Click(Sender: TObject);
var I:integer;
begin
ListBox1.Visible:=False;
for I:=0 to ListBox1.Items.count-1 do
 ListBox1.Selected[i]:=True;
ListBox1.Visible:=True;
end;

procedure TAnaForm.FormCreate(Sender: TObject);
begin
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;
ComboBox3.Items.Clear;
ComboBox3.Items.Add('Assimetria');
ComboBox3.Items.Add('Seleção');
ComboBox3.Items.Add('Curtose');
ComboBox3.ItemIndex:=0;
ComboBox4.ItemIndex:=0;
end;

procedure TAnaForm.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.Text='Medida dos Momentos' then CheckBox3.Enabled:=False else
CheckBox3.Enabled:=true;
end;

procedure TAnaForm.RadioButton5Click(Sender: TObject);
begin
CheckBox2.Checked:=False;
CheckBox3.Checked:=False;
CheckBox2.Enabled:=False;
CheckBox3.Enabled:=False;
ComboBox1.Enabled:=False;
end;

procedure TAnaForm.RadioButton4Click(Sender: TObject);
begin
ComboBox1.Enabled:=True;
CheckBox2.Enabled:=True;
if combobox1.text<>'Medida dos Momentos' then
CheckBox3.Enabled:=True;
end;

procedure TAnaForm.RBFreqClick(Sender: TObject);
begin
Panel2.Visible:=(Sender=RBShep) or (Sender=RBPej);
Panel1.Visible:=Sender=RBBivar;
end;

procedure TAnaForm.ComboBox2Change(Sender: TObject);
begin
if ComboBox2.Text='Média' then
begin
ComboBox3.Items.Clear;
ComboBox3.Items.Add('Seleção');
ComboBox3.Items.Add('Assimetria');
ComboBox3.Items.Add('Curtose');
end;
if ComboBox2.Text='Seleção' then
begin
ComboBox3.Items.Clear;
ComboBox3.Items.Add('Média');
ComboBox3.Items.Add('Assimetria');
ComboBox3.Items.Add('Curtose');
end;
if ComboBox2.Text='Assimetria' then
begin
ComboBox3.Items.Clear;
ComboBox3.Items.Add('Média');
ComboBox3.Items.Add('Seleção');
ComboBox3.Items.Add('Curtose');
end;
if ComboBox2.Text='Curtose' then
begin
ComboBox3.Items.Clear;
ComboBox3.Items.Add('Média');
ComboBox3.Items.Add('Seleção');
ComboBox3.Items.Add('Assimetria');
end;
ComboBox3.ItemIndex:=0;
end;

end.
