unit ColunaUni;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, EditInt;

type
  TColunaForm = class(TForm)
    CheckBox1: TCheckBox;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Edit1: TEditInt;
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ColunaForm: TColunaForm;

implementation

{$R *.DFM}

procedure TColunaForm.CheckBox1Click(Sender: TObject);
begin
GroupBox1.Enabled:= not CheckBox1.Checked;
Label1.Enabled:= not CheckBox1.Checked;
Edit1.Enabled:=not CheckBox1.Checked;
end;

end.
