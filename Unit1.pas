unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ImgList, StdCtrls, Math, Buttons, GIFImage,
  ComCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Image2: TImage;
    Image3: TImage;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Image4: TImage;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    Edit2: TEdit;
    Button2: TButton;
    GroupBox5: TGroupBox;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox6: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton1: TRadioButton;
    Label8: TLabel;
    Label9: TLabel;
    RadioButton4: TRadioButton;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    ImageList1: TImageList;
    GroupBox7: TGroupBox;
    Edit3: TEdit;
    Button7: TButton;
    Memo1: TRichEdit;
    act1: TShape;
    act2: TShape;
    act3: TShape;
    act4: TShape;
    act5: TShape;
    act6: TShape;
    act7: TShape;
    act8: TShape;
    act9: TShape;
    act10: TShape;
    act11: TShape;
    act12: TShape;
    act24: TShape;
    act23: TShape;
    act22: TShape;
    act21: TShape;
    act20: TShape;
    act19: TShape;
    act18: TShape;
    act17: TShape;
    act16: TShape;
    act15: TShape;
    act14: TShape;
    act13: TShape;
    pos1: TBevel;
    pos2: TBevel;
    pos3: TBevel;
    pos4: TBevel;
    pos5: TBevel;
    pos6: TBevel;
    pos7: TBevel;
    pos8: TBevel;
    pos9: TBevel;
    pos10: TBevel;
    pos11: TBevel;
    pos12: TBevel;
    pos24: TBevel;
    pos23: TBevel;
    pos22: TBevel;
    pos21: TBevel;
    pos20: TBevel;
    pos19: TBevel;
    pos18: TBevel;
    pos17: TBevel;
    pos16: TBevel;
    pos15: TBevel;
    pos14: TBevel;
    pos13: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Image21DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Image21DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Button7Click(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Image21MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image21MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  wpos: array[0..24] of Integer;
  bpos: array[0..24] of Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Randomize;
  Image2.Picture.LoadFromFile('images\w'+inttostr(RandomRange(1,7))+'.jpg');
  Image3.Picture.LoadFromFile('images\w'+inttostr(RandomRange(1,7))+'.jpg');
end;

procedure TForm1.FormCreate(Sender: TObject);
var i:integer;
begin
  Image4.Picture.LoadFromFile('Images\Whiteactive.gif');
  wpos[0]:= 15;
  bpos[0]:= 15;
  for i:=1 to 25 do
    begin
      wpos[i]:=0;
      bpos[i]:=0;
    end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 If CheckBox1.Checked = True Then
   begin
     Edit1.Enabled := True;
     Edit2.Enabled := True;
     Button2.Enabled := True;
//     Memo1.Enabled := True;
     Edit3.Enabled :=True;
     Button7.Enabled := True;
   end
 else
   begin
     Edit1.Enabled := False;
     Edit2.Enabled := False;
     Button2.Enabled := False;
//     Memo1.Enabled := False;
     Edit3.Enabled :=False;
     Button7.Enabled := False;
   end;

end;

procedure TForm1.Image21DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  accept:=true;
  Image21.Left:=x;
  Image21.Top:=y;
end;

procedure TForm1.Image21DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Image21.Left:=x;
  Image21.Top:=y;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Memo1.Lines.Add(Edit2.Text + ': '+ Edit3.Text);
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.SelStart:=Memo1.SelLength;
end;

procedure TForm1.Image21MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Memo1.Lines.Add('mousedown');
  Act12.Visible := True;
end;

procedure TForm1.Image21MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Memo1.Lines.Add('mouseup');
  Act12.Visible := False;
end;

end.
