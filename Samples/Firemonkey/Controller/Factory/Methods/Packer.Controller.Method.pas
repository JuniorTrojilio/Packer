unit Packer.Controller.Method;

interface

uses
  Packer.Controller.Method.Interfaces, Packer.Controller.Method.Zip.Interfaces,
  Packer.Controller.Method.UnZip.Interfaces;
type
    TPackerMethods = class(TInterfacedObject, iPackerMethods)
    private
      { Private declarations }
    public
      { Public declarations }
      function Zip : iZip;
      function UnZip : iUnZip;
      constructor Create;
      destructor Destroy; override;
      class function New : iPackerMethods;
    end;

implementation

{ TPackerMethod }

uses Packer.Controller.Method.Zip, Packer.Controller.Method.UnZip;

constructor TPackerMethods.Create;
begin

end;

destructor TPackerMethods.Destroy;
begin

  inherited;
end;

class function TPackerMethods.New: iPackerMethods;
begin
  Result := Self.Create;
end;

function TPackerMethods.UnZip: iUnZip;
begin
  Result :=  TUnZip.New;
end;

function TPackerMethods.Zip: iZip;
begin
  Result :=  TZip.New;
end;

end.
