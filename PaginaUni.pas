unit PaginaUni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, EditInt, SKEdit;

type
  TPaginaForm = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    BitBtn1: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Edit1: TEdit;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    Edit2: TEdit;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    BitBtn2: TBitBtn;
    Edit3: TSKEdit;
    Edit4: TSKEdit;
    Edit5: TSKEdit;
    Edit6: TSKEdit;
    Edit7: TEditInt;
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton8Click(Sender: TObject);
    procedure RadioButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PaginaForm: TPaginaForm;

implementation

{$R *.DFM}

procedure TPaginaForm.RadioButton7Click(Sender: TObject);
begin
Edit1.Enabled:=True;
Edit1.SetFocus;
end;

procedure TPaginaForm.RadioButton3Click(Sender: TObject);
begin
Edit1.Enabled:=False;
end;

procedure TPaginaForm.RadioButton8Click(Sender: TObject);
begin
Edit2.Enabled:=True;
Edit2.SetFocus;
end;

procedure TPaginaForm.RadioButton9Click(Sender: TObject);
begin
Edit2.Enabled:=False;
end;






end.
