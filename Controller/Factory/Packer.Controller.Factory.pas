unit Packer.Controller.Factory;

interface

uses
  Packer.Controller.Factory.Interfaces, Packer.Controller.Method.Interfaces;
type
    TPackerFactory = class(TInterfacedObject, iPackerFactory)
    private
      { Private declarations }
    public
      { Public declarations }
      function Method : iPackerMethods;
      constructor Create;
      destructor Destroy; override;
      class function New : iPackerFactory;
    end;

implementation

{ TPackerFactory }

uses Packer.Controller.Method;

constructor TPackerFactory.Create;
begin

end;

destructor TPackerFactory.Destroy;
begin

  inherited;
end;

function TPackerFactory.Method: iPackerMethods;
begin
  Result := TPackerMethods.New;
end;

class function TPackerFactory.New: iPackerFactory;
begin
  Result := Self.Create;
end;

end.
