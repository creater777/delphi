unit settings;

interface

uses
  IniFiles;

type
  TSettings = class(TIniFile)
  private
  public
     dbConnectionString: string;
    constructor Create;
    procedure saveDBConn(user: string; pass: string; host: string; db: string);
  end;

const FILE_NAME = 'config.ini';

implementation

constructor TSettings.Create;
begin
  inherited Create(FILE_NAME);
  dbConnectionString:=ReadString('main', 'db', 'Provider=SQLOLEDB.1;Password=1;Persist Security Info=True;User ID=sa;Initial Catalog=test;Data Source=ÄÀÐÜß-ÏÊ');
end;

procedure TSettings.saveDBConn(user: string; pass: string; host: string; db: string);
begin
  WriteString('main', 'db', 'Provider=SQLOLEDB.1;Password=' + pass + ';Persist Security Info=True;User ID=' + user + ';Initial Catalog=' + db + ';Data Source=' + host);
end;

end.
