unit untMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.TabControl,
  FMX.Objects, FMX.Effects;

type
  TForm3 = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    TabItem3: TTabItem;
    Layout4: TLayout;
    Layout5: TLayout;
    GridPanelLayout1: TGridPanelLayout;
    GridLayout1: TGridLayout;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Edit1: TEdit;
    Button17: TButton;
    Button18: TButton;
    StyleBook1: TStyleBook;
    ScaledLayout1: TScaledLayout;
    Layout6: TLayout;
    Button19: TButton;
    Image1: TImage;
    OpenDialog1: TOpenDialog;
    flow: TFlowLayout;
    Layout7: TLayout;
    Button20: TButton;
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Label1: TLabel;
    GlowEffect1: TGlowEffect;
    Button21: TButton;
    Button22: TButton;
    procedure Button5Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
    Procedure AgregaNumero(numero: string);
    Procedure AsignarA(op:integer);
  end;

var

  Form3: TForm3;
  A,B,C:REAL;
  operacion:integer;
implementation

{$R *.fmx}
{$R *.NmXhdpiPh.fmx ANDROID}

{ TForm3 }

procedure TForm3.AgregaNumero(numero: string);
begin
  if Edit1.Text = '0' then
    if numero <> '.' then
      Edit1.Text := numero
    else
      Edit1.Text := '0' + numero

  else
    Edit1.Text := Edit1.Text + numero;
end;

procedure TForm3.AsignarA(op:integer);
begin
  operacion:=op;
  A:= STRtofloat(edit1.Text);
   edit1.Text:='0' ;
end;

procedure TForm3.Button14Click(Sender: TObject);
var
  s: string;
begin
  s := Edit1.Text;
  if s <> '0' then
  begin

    if Pos('-', s) > 0 then
      Edit1.Text := copy(s, 2, length(s))
    else
      Edit1.Text := '-' + s;
  end;

end;

procedure TForm3.Button16Click(Sender: TObject);
var
  s: string;
begin
  s := Edit1.Text;
  if Pos('.', s) > 0 then
    Edit1.Text := s
  else

    AgregaNumero('.');
end;

procedure TForm3.Button17Click(Sender: TObject);
begin
  Edit1.Text := '0'
end;

procedure TForm3.Button18Click(Sender: TObject);
var
  s: string;
begin
  s := Edit1.Text;

  Edit1.Text := copy(s, 1, length(s) - 1);
  if Edit1.Text = '' then
    Edit1.Text := '0';
end;

procedure TForm3.Button19Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Image1.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  asignarA(4);
end;

procedure TForm3.Button20Click(Sender: TObject);
var
  bt: TButton;
begin
  bt := TButton.Create(flow);
  bt.Margins.Left := 5;
  bt.Margins.top := 5;
  bt.Margins.Right := 5;
  bt.Margins.Bottom := 5;

  bt.Parent := flow;

end;

procedure TForm3.Button21Click(Sender: TObject);
VAR
  I: INTEGER;
begin
  for I := flow.Controls.Count - 1 DOWNTO 0 do
    flow.Children.Items[I].DisposeOf

end;

procedure TForm3.Button22Click(Sender: TObject);
begin
  b := STRtofloat(edit1.Text);
  case operacion of
  1:   c:= a+b;
  2:  c:= a-b;
  3:  c:= a*b;
  4:   c:= a/b;
  end;


   edit1.Text:= floatTostr(c) ;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  asignarA(3);
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  asignarA(2);
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
 asignarA(1);
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  AgregaNumero((Sender as TButton).Text)
end;

procedure TForm3.FormShow(Sender: TObject);
begin
    A:=0;
    B:=0;
    C:=0;
end;

end.
