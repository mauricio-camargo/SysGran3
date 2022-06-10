unit OpcoesUni;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, Buttons;

type
  TOpcoesForm = class(TForm)
    DE1: TDirectoryEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OpcoesForm: TOpcoesForm;

implementation

{$R *.dfm}

end.
