unit ConfigGraf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Buttons, RxCombos, Spin, SKEdit;

type
  TConfigGrafForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    LegendaSheet: TTabSheet;
    CB3D: TCheckBox;
    GroupBox1: TGroupBox;
    Button1: TButton;
    CBTitulo: TCheckBox;
    Edit1: TEdit;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    GroupBox2: TGroupBox;
    Button2: TButton;
    Panel1: TPanel;
    Button3: TButton;
    Button4: TButton;
    Panel2: TPanel;
    GroupBox3: TGroupBox;
    CBX: TCheckBox;
    Label11: TLabel;
    SKMinX: TSKEdit;
    Label12: TLabel;
    SKMaxX: TSKEdit;
    GroupBox4: TGroupBox;
    EditTituloX: TEdit;
    BtnFonteTituloX: TBitBtn;
    BtnFonteEixoX: TBitBtn;
    GroupBox5: TGroupBox;
    CBY: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    SKMinY: TSKEdit;
    SKMaxY: TSKEdit;
    BtnFonteEixoY: TBitBtn;
    GroupBox6: TGroupBox;
    EditTituloY: TEdit;
    BtnFonteTituloY: TBitBtn;
    Button5: TButton;
    Panel3: TPanel;
    Button6: TButton;
    Panel4: TPanel;
    CBLeg: TCheckBox;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button7: TButton;
    Panel6: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure CBXClick(Sender: TObject);
    procedure CBYClick(Sender: TObject);
    procedure BtnFonteEixoXClick(Sender: TObject);
    procedure BtnFonteTituloXClick(Sender: TObject);
    procedure BtnFonteEixoYClick(Sender: TObject);
    procedure BtnFonteTituloYClick(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  ConfigGrafForm: TConfigGrafForm;

implementation


{$R *.dfm}

procedure TConfigGrafForm.FormCreate(Sender: TObject);
begin
{  Chart.LeftAxis.Automatic:=CheckBox2.Checked;
  Chart.LeftAxis.AutomaticMaximum:=CheckBox2.Checked;
  Chart.LeftAxis.AutomaticMinimum:=CheckBox2.Checked;
  Chart.LeftAxis.Minimum:=StrToFloat(Edit5.Text);
  Chart.LeftAxis.Maximum:=StrToFloat(Edit6.Text);

  Series1.Pointer.Brush.Color:= jvColorComboBox1.ColorValue;
  Series1.Pointer.Pen.Color:= jvColorComboBox1.ColorValue;
  Series1.SeriesColor:=jvColorComboBox2.ColorValue;
  Series1.Pointer.HorizSize:=SpinEdit1.Value;
  Series1.Pointer.VertSize:=SpinEdit1.Value;
  Series1.LinePen.Width:=SpinEdit2.Value;
}
end;

procedure TConfigGrafForm.Button1Click(Sender: TObject);
begin
FontDialog1.Font:=Edit1.Font;
if FontDialog1.Execute then Edit1.Font:=FontDialog1.Font;
end;

procedure TConfigGrafForm.Button2Click(Sender: TObject);
begin
ColorDialog1.Color:=Edit1.Color;
if ColorDialog1.Execute then Edit1.Color:=ColorDialog1.Color;
end;

procedure TConfigGrafForm.Button3Click(Sender: TObject);
begin
ColorDialog1.Color:=Panel1.Color;
if ColorDialog1.Execute then Panel1.Color:=ColorDialog1.Color;
end;

procedure TConfigGrafForm.Button4Click(Sender: TObject);
begin
ColorDialog1.Color:=Panel2.Color;
if ColorDialog1.Execute then Panel2.Color:=ColorDialog1.Color;
end;

procedure TConfigGrafForm.CBXClick(Sender: TObject);
begin
SKMinX.Enabled:=not CBX.Checked;
SKMaxX.Enabled:=SKMinX.Enabled;
Label11.Enabled:=SKMinX.Enabled;
Label12.Enabled:=SKMinX.Enabled;
BtnFonteEixoX.Enabled:=SKMinX.Enabled;
end;

procedure TConfigGrafForm.CBYClick(Sender: TObject);
begin
SKMinY.Enabled:=not CBY.Checked;
SKMaxY.Enabled:=SKMinY.Enabled;
Label1.Enabled:=SKMinY.Enabled;
Label2.Enabled:=SKMinY.Enabled;
BtnFonteEixoY.Enabled:=SKMinY.Enabled;
end;

procedure TConfigGrafForm.BtnFonteEixoXClick(Sender: TObject);
begin
FontDialog1.Font:=SKMinX.Font;
if FontDialog1.Execute then begin
 SKMinX.Font:=FontDialog1.Font;
 SKMaxX.Font:=FontDialog1.Font;
end;
end;

procedure TConfigGrafForm.BtnFonteTituloXClick(Sender: TObject);
begin
FontDialog1.Font:=EditTituloX.Font;
if FontDialog1.Execute then EditTituloX.Font:=FontDialog1.Font;
end;

procedure TConfigGrafForm.BtnFonteEixoYClick(Sender: TObject);
begin
FontDialog1.Font:=SKMinY.Font;
if FontDialog1.Execute then begin
 SKMinY.Font:=FontDialog1.Font;
 SKMaxY.Font:=FontDialog1.Font;
end;
end;

procedure TConfigGrafForm.BtnFonteTituloYClick(Sender: TObject);
begin
FontDialog1.Font:=EditTituloY.Font;
if FontDialog1.Execute then EditTituloY.Font:=FontDialog1.Font;
end;

procedure TConfigGrafForm.Button5Click(Sender: TObject);
begin
ColorDialog1.Color:=Panel3.Color;
if ColorDialog1.Execute then Panel3.Color:=ColorDialog1.Color;
end;

procedure TConfigGrafForm.Button6Click(Sender: TObject);
begin
FontDialog1.Font:=Panel4.Font;
if FontDialog1.Execute then Panel4.Font:=FontDialog1.Font;
end;

procedure TConfigGrafForm.Button7Click(Sender: TObject);
begin
ColorDialog1.Color:=Panel6.Color;
if ColorDialog1.Execute then Panel6.Color:=ColorDialog1.Color;
if Panel6.Caption='Cores múltiplas' then Panel6.Caption:='';
end;

end.
