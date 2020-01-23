unit Dialogs.Controllers.Method.OpenDialogs;

interface

uses
{$IF FireMonkeyVersion}
  FMX.Dialogs,
{$ELSE}
  Vcl.Dialogs,
{$ENDIF}
  Dialogs.Controllers.Method.Interfaces, System.Classes;

type
  TOpenDialogs = class(TInterfacedObject, iDialogs, iDialogParams,
    iDialogFilter, iDialogOption)
  private
    FOpenDialog: TOpenDialog;
    FFilter: TStringList;
    FOptions: TOpenOptions;
  public
    function Title(Value: String): iDialogParams;
    function InitialDir(Value: String): iDialogParams;
    function FilterIndex(Value: Integer): iDialogParams;
    function DefaultExt(Value : String): iDialogParams;

    function ReadOnly: iDialogOption;
    function AllowMultiSelect: iDialogOption;
    function FileMustExist: iDialogOption;
    function EndOptions: iDialogParams;

    function AddXML: iDialogFilter;
    function AddPDF: iDialogFilter;
    function AddTXT: iDialogFilter;
    function AddAll: iDialogFilter;
    function AddZip: iDialogFilter;
    function AddFilter: iDialogFilter;

    function AddOption: iDialogOption;

    function EndFilter: iDialogParams;
    function Params: iDialogParams;
    function EndParams: iDialogs;

    function Execute(var pNameFile: TStrings): Boolean; overload;
    function Execute(var pNameFile: String): Boolean; overload;
    function Execute: String; overload;

    constructor Create;
    destructor Destroy; override;
    class function New: iDialogs;
  end;

implementation

{ TOpenDialogs }

constructor TOpenDialogs.Create;
begin
  FOpenDialog := TOpenDialog.Create(nil);
  FOpenDialog.Filter := '';
  FFilter := TStringList.Create;
end;

function TOpenDialogs.DefaultExt(Value: String): iDialogParams;
begin
  Result := Self;
  FOpenDialog.DefaultExt := Value;
end;

destructor TOpenDialogs.Destroy;
begin
  FOpenDialog.DisposeOf;
  FFilter.DisposeOf;
  inherited;
end;

class function TOpenDialogs.New: iDialogs;
begin
  Result := Self.Create;
end;

function TOpenDialogs.AddOption: iDialogOption;
begin
  Result := Self;
end;

function TOpenDialogs.Execute(var pNameFile: TStrings): Boolean;
begin
  Result := FOpenDialog.Execute;
  pNameFile := FOpenDialog.Files;
end;

function TOpenDialogs.FilterIndex(Value: Integer): iDialogParams;
begin
  Result := Self;
  FOpenDialog.FilterIndex := Value;
end;

function TOpenDialogs.InitialDir(Value: String): iDialogParams;
begin
  Result := Self;
  FOpenDialog.InitialDir := Value;
end;

function TOpenDialogs.Title(Value: String): iDialogParams;
begin
  Result := Self;
  FOpenDialog.Title := Value;
end;

function TOpenDialogs.Params: iDialogParams;
begin
  Result := Self;
end;

function TOpenDialogs.AddAll: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Todos os Arquivos (*.*) | * .*|');
end;

function TOpenDialogs.AddPDF: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos PDF (*.pdf) | * .pdf|');
end;

function TOpenDialogs.AddTXT: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos TXT (*.txt) | * .txt|');
end;

function TOpenDialogs.AddXML: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos XML (*.xml) | * .xml|');
end;

function TOpenDialogs.AddZip: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos ZIP (*.zip) | * .zip|');
end;

function TOpenDialogs.AddFilter: iDialogFilter;
begin
  Result := Self;
end;

function TOpenDialogs.EndFilter: iDialogParams;
begin
  Result := Self;
  FOpenDialog.Filter := FFilter.Text;
end;

function TOpenDialogs.EndParams: iDialogs;
begin
  Result := Self;
end;

function TOpenDialogs.Execute: String;
begin
  FOpenDialog.Execute;
  Result := FOpenDialog.FileName;
end;

function TOpenDialogs.Execute(var pNameFile: String): Boolean;
begin
  Result := FOpenDialog.Execute;
  pNameFile := FOpenDialog.FileName;
end;

function TOpenDialogs.EndOptions: iDialogParams;
begin
  Result := Self;
  FOpenDialog.Options := FOptions;
end;

function TOpenDialogs.AllowMultiSelect: iDialogOption;
begin
  Result := Self;
  FOptions := FOptions + [ofAllowMultiSelect];
end;

function TOpenDialogs.FileMustExist: iDialogOption;
begin
  Result := Self;
  FOptions := FOptions + [ofFileMustExist];
end;

function TOpenDialogs.ReadOnly: iDialogOption;
begin
  Result := Self;
  FOptions := FOptions + [ofReadOnly];
end;

end.
