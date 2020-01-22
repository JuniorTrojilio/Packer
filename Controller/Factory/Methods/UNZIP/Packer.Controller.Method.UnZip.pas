unit Packer.Controller.Method.UnZip;

interface

uses
  Packer.Controller.Method.UnZip.Interf;
type
    TUnZip = class(TInterfacedObject, iUnZip)
    private
      { Private declarations }
    public
      { Public declarations }
      constructor Create;
      destructor Destroy; override;
      class function New : iUnZip;
    end;

implementation

{ TUnZip }

constructor TUnZip.Create;
begin

end;

destructor TUnZip.Destroy;
begin

  inherited;
end;

class function TUnZip.New: iUnZip;
begin
  Result := Self.Create;
end;

end.
