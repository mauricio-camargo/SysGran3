unit ShepUni;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  ClipBrd, Printers, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, VCF1;

type
  TShepForm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    BitBtn4: TBitBtn;
    Image1: TImage;
    PrintDialog1: TPrintDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
   Nu:Integer;
   F1Shep:TF1Book;
   Procedure Shep;
  end;

var
  ShepForm: TShepForm;

implementation
Uses Unit1, AnaUni, PlaniUni;

{$R *.DFM}

function Pala(q: Extended):Integer;
var
S:String;
U:Extended;
begin
U:=Int(q);
S:=FloatToStr(U);
Pala:=StrToInt(S);
end;

procedure TShepForm.Shep;
var z,Amost,x,C,g,r,Ops,i:Integer;
SHxa,SHya,SHxb,SHyb,
ArHxa,ArHya,ArHxb,ArHyb,
AHxa,AHya,AHxb,AHyb,
ArA,ArB,SA,SB,AA,AB,
YY,XX,YY1,XX1,YY2,XX2,
Ar,Soma,Areia,Silte,Argila:Extended;
ArXa,ArYa,ArXb,ArYb,
SXa,SYa,SXb,SYb,
AXa,AYa,AXb,AYb:LongInt;
Clw:Array[1..30] of Extended;
VFw:array[1..30] of Extended;
VBw:Array[1..30] of Extended;
begin
try
Screen.Cursor:=crHourGlass;
With Image1.Canvas do
begin
Brush.Color:=clWhite;
FloodFill(0, 0, clgreen, fsBorder);
Pen.Color:=clBlack;
Pen.Width:=2;
MoveTo(200,34);
LineTo(375,337);
LineTo(24,337);
LineTo(200,34);
Pen.Width:=1;
if AnaForm.RadioButton3.Checked then
begin
ShepForm.Caption:='Diagrama de Shepard';
MoveTo(155,112);
LineTo(244,112);
MoveTo(112,186);
LineTo(200,239);
LineTo(288,186);
MoveTo(200,112);
LineTo(200,186);
LineTo(156,264);
LineTo(245,264);
LineTo(200,186);
MoveTo(200,239);
LineTo(200,337);
MoveTo(68,262);
LineTo(112,337);
MoveTo(288,337);
LineTo(332,262);
MoveTo(90,300);
LineTo(156,264);
MoveTo(310,300);
LineTo(245,264);
end
else
begin
ShepForm.Caption:='Diagrama de Pejrup';
MoveTo(338,274);
LineTo(24,336);
MoveTo(288,186);
LineTo(24,336);
MoveTo(240,104);
LineTo(24,336);
end;
Font.Name:='Arial';
Font.Size:=8;
Font.Color:=clBlack;
Font.Style:=[fsBold];
TextOut(186,20,'Argila');
TextOut(374,321,'Silte');
TextOut(3,338,'Areia');
Font.Style:=[];
TextOut(1,313,'100%');
TextOut(365,340,'100%');
TextOut(210,36,'100%');
TextOut(87,175,'50%');
TextOut(292,175,'50%');
TextOut(87,175,'50%');
TextOut(194,340,'50%');
if AnaForm.RadioButton3.Checked then
begin
TextOut(129,103,'25%');
TextOut(249,103,'75%');
TextOut(43,250,'75%');
TextOut(336,252,'25%');
TextOut(108,340,'25%');
TextOut(280,340,'75%');
TextOut(198,76,'1');
TextOut(166,156,'2');
TextOut(230,156,'3');
TextOut(198,212,'4');
TextOut(129,235,'5');
TextOut(270,235,'8');
TextOut(182,240,'6');
TextOut(214,240,'7');
TextOut(64,306,'9');
TextOut(160,306,'10');
TextOut(234,306,'11');
TextOut(332,306,'12');
end
else
begin
TextOut(338,259,'20%');
TextOut(246,94,'80%');
MoveTo(348,337);
LineTo(186,54);
TextOut(338,339,'10%');
TextOut(164,42,'10%');
MoveTo(52,337);
LineTo(40,309);
TextOut(50,339,'90%');
TextOut(18,293,'90%');
MoveTo(200,337);
LineTo(112,186);
Font.Size:=12;
TextOut(238,62,'I');
TextOut(276,134,'II');
TextOut(326,226,'III');
TextOut(362,290,'IV');
TextOut(270,344,'C');
TextOut(122,344,'B');
TextOut(32,344,'A');
end;
if AnaForm.RadioButton3.Checked then
begin
Rectangle(360,11,550,288);
Font.Size:=10;
Font.Color:=clRed;
TextOut(370,18,'   CONVENÇÕES');
Font.Color:=clBlack;
TextOut(370,34,'1 - Argila ou argilito');
TextOut(370,50,'2 - Argila Arenosa');
TextOut(370,66,'3 - Argila síltica');
TextOut(370,82,'4 - Argila siltico-arenosa');
TextOut(370,98,'5 - Areia argilosa');
TextOut(370,114,'6 - Areia síltico-argilosa');
TextOut(370,130,'7 - Silte argilo-arenoso');
TextOut(370,146,'8 - Silte argiloso');
TextOut(370,162,'9 - Areia ou arenito');
TextOut(370,178,'10 - Areia síltica');
TextOut(370,194,'11 - Silte arenoso');
TextOut(370,210,'12 - Silte ou siltito');
Font.Color:=clRed;
TextOut(370,230,'   LEGENDAS');
Font.Color:=clBlack;
TextOut(387,246,'- Fração de grânulos < 3%');
TextOut(387,262,'- Fração de grânulos > 3%');
Brush.Color := clBlue;
Pen.Color:=clBlue;
Ellipse(370,250,380,260);
Polygon([Point(368, 273), Point(375, 266), Point(382, 273),Point(368, 273)]);
end
else
begin
Rectangle(360,11,550,172);
Font.Size:=10;
Font.Color:=clRed;
TextOut(370,18,'   CONVENÇÕES');
Font.Color:=clBlack;
TextOut(370,38,'I - Hidrodinâmica baixa');
TextOut(370,54,'II - Hidrodinâmica moderada');
TextOut(370,70,'III - Hidrodinâmica alta');
TextOut(370,86,'IV - Hidrodinâmica muito alta');

Font.Color:=clRed;
TextOut(370,110,'   LEGENDAS');
Font.Color:=clBlack;
TextOut(387,130,'- Fração de grânulos < 3%');
TextOut(387,146,'- Fração de grânulos > 3%');
Brush.Color := clBlue;
Pen.Color:=clBlue;
Ellipse(370,134,380,144);
Polygon([Point(368, 157), Point(375, 150), Point(382, 157),Point(368, 157)]);
end;
end;

for i:=1 to 50 do
if (F1Shep.EntryRC[1,i]='') then
Break;
Form1.Nc:=i-1;
for i:=1 to 16834 do
if F1Shep.EntryRC[i,1]='' then
Break;
Form1.Nl:=i-1;

Form1.PB1.Max:=Form1.Nl;
for z:=0 to AnaForm.ListBox1.Items.Count-1 do
begin
 Form1.PB1.StepIt;
 if AnaForm.ListBox1.Selected[z] then Amost:=z+2 else continue;
 r:=Form1.Nc-1;
 for g:=1 to r do
  begin
  Clw[g]:=StrToFloat(F1Shep.EntryRC[1,g+1]);
  Vbw[g]:=StrToFloat(F1Shep.EntryRC[Amost,g+1]);
  end;

Soma:=0;
for I:=1 to r do Soma:=Soma + Vbw[I];
for I:=1 to r do VFw[I]:=(Vbw[I]*100)/Soma;
Areia:=0;
Silte:=0;
Argila:=0;
for i:=1 to r do
begin
if (Clw[i]>-1) and (Clw[i]<=4) then Areia:=Areia+VFw[i];
if (Clw[i]>4) and (Clw[i]<=8) then Silte:=Silte+VFw[i];
if Clw[i]>8 then Argila:=Argila+VFw[i];
end;
with Image1.canvas do
begin
ArHxa:=200-1.76*Areia;
ArHya:=34+3.03*Areia;
ArXa:=Pala(ArHxa);
ArYa:=Pala(ArHya);
ArHxb:=375-3.51*Areia;
ArXb:=Pala(ArHxb);
ArYb:=337;
ArB:=(((2*((ArXa*ArYa)+(ArXb*ArYb))) - ((ArXa+ArXb)*(ArYa+ArYb)))+0.1)/
     ((2*((ArXa*ArXa)+(ArXb*ArXb)) - ((ArXa+ArXb)*(ArXa+ArXb)))+0.1);{Sem isso dá umas merdas}
ArA:=((ArYa+ArYb)/2)-(ArB*((ArXa+ArXb)/2));
SHxa:=200+1.75*Silte;
SHya:=34+3.03*Silte;
SXa:=Pala(SHxa);
SYa:=Pala(SHya);
SHxb:=24+3.51*Silte;
SXb:=Pala(SHxb);
SYb:=337;
SB:=((2*((SXa*SYa)+(SXb*SYb))) - ((SXa+SXb)*(SYa+SYb)))/
     (2*((SXa*SXa)+(SXb*SXb)) - ((SXa+SXb)*(SXa+SXb)));
SA:=((SYa+SYb)/2)-(SB*((SXa+SXb)/2));
XX:=(SA-ArA)/(ArB-SB);
YY:=ArA+ArB*XX;
AHxa:=24+1.76*Argila;
AHya:=337-3.03*Argila;
AXa:=Pala(AHxa);
AYa:=Pala(AHya);
AHxb:=375-1.75*Argila;
AHyb:=337-3.03*Argila;
AXb:=Pala(AHxb);
AYb:=Pala(AHyb);
AB:=((2*((AXa*AYa)+(AXb*AYb))) - ((AXa+AXb)*(AYa+AYb)))/
     (2*((AXa*AXa)+(AXb*AXb)) - ((AXa+AXb)*(AXa+AXb)));
AA:=((AYa+AYb)/2)-(AB*((AXa+AXb)/2));
XX1:=(AA-ArA)/(ArB-AB);
YY1:=ArA+ArB*XX1;
XX2:=(SA-AA)/(AB-SB);
YY2:=AA+AB*XX2;

Brush.Color := clBlue;
Pen.Color:=clBlue;
Polygon([Point(Pala(XX), Pala(YY)),Point(Pala(XX1), Pala(YY1)),Point(Pala(XX2), Pala(YY2)),Point(Pala(XX), Pala(YY))]);
Ellipse(Pala(XX)-2,Pala(YY)+Pala(Abs(YY1-YY)/2)-2,Pala(XX)+4,Pala(YY)+Pala(Abs(YY1-YY)/2)+4);

Brush.Color := clWhite;
Pen.Color:=clBlack;
Font.Name:='Arial';
Font.Size:=7;
Font.Color:=clRed;
TextOut(Pala(XX)-14,Pala(YY)-14,F1Shep.EntryRC[Amost,1]);
end;
end;
Form1.PB1.Position:=0;
Form1.PB1.Visible:=False;
Screen.Cursor:=crDefault;
Show;
except
on exception do
begin
Form1.PB1.Position:=0;
Form1.PB1.Visible:=False;
Screen.Cursor:=crDefault;
MessageDlg('Não foi possível preparar a apresentação do Diagrama de Shepard.', mtError, [mbOk], 0);
end;
end;
end;

procedure TShepForm.BitBtn1Click(Sender: TObject);
begin
Clipboard.Assign(Image1.Picture);
end;

procedure TShepForm.BitBtn3Click(Sender: TObject);
begin
If SaveDialog1.Execute then
begin
Image1.Picture.SaveToFile(SaveDialog1.FileName);
end;
end;

procedure TShepForm.BitBtn4Click(Sender: TObject);
var Rect:TRect;
begin
if PrintDialog1.Execute then
begin
Rect.Left:=0;
Rect.Top:=0;
Rect.Right:=Image1.Picture.Width*4;
Rect.Bottom:=Image1.Picture.Height*4;
 with Printer do
  begin
    BeginDoc;
    Canvas.StretchDraw(Rect,Image1.Picture.Bitmap);
    EndDoc;
  end;
end;
end;

procedure TShepForm.BitBtn2Click(Sender: TObject);
begin
Close;
end;

procedure TShepForm.FormCreate(Sender: TObject);
begin
F1Shep:=TPlaniForm(Form1.ActiveMDIChild).F1;
end;

end.


