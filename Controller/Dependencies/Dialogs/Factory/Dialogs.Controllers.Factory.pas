unit Dialogs.Controllers.Factory;

interface

uses
{$IFDEF FMX}
  FMX.Dialogs,
{$ELSE}
  Vcl.Dialogs,
{$ENDIF}
  Dialogs.Controllers.Interfaces.Factory,
  Dialogs.Controllers.Method.OpenDialogs,
  Dialogs.Controllers.Method.Interfaces;

type
  TDialogFactory = class(TInterfacedObject, iDialogFactory)
  private
  public
    function OpenDialog: iDialogs;
    function SaveDialog: iDialogs;
    constructor Create;
    destructor Destroy; override;
    class function New: iDialogFactory;
  end;

implementation

uses
  Dialogs.Controllers.Method.SaveDialogs;

{ TDialogFactory }

constructor TDialogFactory.Create;
begin

end;

destructor TDialogFactory.Destroy;
begin

  inherited;
end;

class function TDialogFactory.New: iDialogFactory;
begin
  Result := Self.Create;
end;

function TDialogFactory.OpenDialog: iDialogs;
begin
  Result := TOpenDialogs.New;
end;

function TDialogFactory.SaveDialog: iDialogs;
begin
  Result := TSaveDialogs.New;
end;

end.
