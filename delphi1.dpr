program delphi1;

uses
  Forms,
  settings in 'settings.pas',
  users in 'users.pas',
  main in 'main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
