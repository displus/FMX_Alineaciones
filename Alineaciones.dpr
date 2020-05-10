program Alineaciones;

uses
  System.StartUpCopy,
  FMX.Forms,
  untMain in 'untMain.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
