unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ADODB, DBTables, DB, Grids, DBGrids, DBClient;

type
  TForm1 = class(TForm)
    DataSource: TDataSource;
    ADOConnection: TADOConnection;
    ADOQuery: TADOQuery;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  list: TStrings;
begin
  list:= TStrings.Create;
  ADOQuery.DataSource.DataSet.GetFieldNames(list);
//  ShowMessage(list[0]);
end;

end.
