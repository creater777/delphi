unit users;

interface

uses ADODB;

type
  TUsers = class(TADOQuery)
  private
  public
//    constructor Create;
    procedure getUsers;
  end;

implementation

procedure TUsers.getUsers;
begin
  ExecSQL
end;


end.
