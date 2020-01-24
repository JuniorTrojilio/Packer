unit Dialogs.Controllers.Method.SaveDialogs;

interface

uses
{$IF FireMonkeyVersion}
  FMX.Dialogs,
{$ELSE}
  Vcl.Dialogs,
{$ENDIF}
  Dialogs.Controllers.Method.Interfaces, System.Classes;

type
  TSaveDialogs = class(TInterfacedObject, iDialogs, iDialogParams,
    iDialogFilter, iDialogOption)
  private
    FSaveDialog: TSaveDialog;
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

{ TSaveDialogs }

constructor TSaveDialogs.Create;
begin
  FSaveDialog := TSaveDialog.Create(nil);
  FSaveDialog.Filter := '';
  FFilter := TStringList.Create;
end;

function TSaveDialogs.DefaultExt(Value: String): iDialogParams;
begin
  Result := Self;
  FSaveDialog.DefaultExt := Value;
end;

destructor TSaveDialogs.Destroy;
begin
  FSaveDialog.DisposeOf;
  FFilter.DisposeOf;
  inherited;
end;

class function TSaveDialogs.New: iDialogs;
begin
  Result := Self.Create;
end;

function TSaveDialogs.AddAll: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Todos os Arquivos (*.*) | * .*|');
end;

function TSaveDialogs.AddPDF: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos PDF (*.pdf) | * .pdf|');
end;

function TSaveDialogs.AddTXT: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos TXT (*.txt) | * .txt|');
end;

function TSaveDialogs.AddXML: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos XML (*.xml) | * .xml|');
end;

function TSaveDialogs.AddZip: iDialogFilter;
begin
  Result := Self;
  FFilter.Add('Arquivos ZIP (*.zip) | * .zip|');
end;

function TSaveDialogs.AddFilter: iDialogFilter;
begin
  Result := Self;
end;

function TSaveDialogs.AddOption: iDialogOption;
begin
  Result := Self;
end;

function TSaveDialogs.EndFilter: iDialogParams;
begin
  Result := Self;
  FSaveDialog.Filter := FFilter.Text;
end;

function TSaveDialogs.EndParams: iDialogs;
begin
  Result := Self;
end;

function TSaveDialogs.Execute: String;
begin
  FSaveDialog.Execute;
  Result := FSaveDialog.FileName;
end;

function TSaveDialogs.Execute(var pNameFile: String): Boolean;
begin
  Result := FSaveDialog.Execute;
  pNameFile := FSaveDialog.FileName;
end;

function TSaveDialogs.Execute(var pNameFile: TStrings): Boolean;
begin
  Result := FSaveDialog.Execute;
  pNameFile := FSaveDialog.Files;
end;

function TSaveDialogs.FilterIndex(Value: Integer): iDialogParams;
begin
  Result := Self;
  FSaveDialog.FilterIndex := Value;
end;

function TSaveDialogs.InitialDir(Value: String): iDialogParams;
begin
  Result := Self;
  FSaveDialog.InitialDir := Value;
end;

function TSaveDialogs.Title(Value: String): iDialogParams;
begin
  Result := Self;
  FSaveDialog.Title := Value;
end;

function TSaveDialogs.Params: iDialogParams;
begin
  Result := Self;
end;

function TSaveDialogs.EndOptions: iDialogParams;
begin
  Result := Self;
  FSaveDialog.Options := FOptions;
end;

function TSaveDialogs.AllowMultiSelect: iDialogOption;
begin
  Result := Self;
  FOptions := [ofAllowMultiSelect];
end;

function TSaveDialogs.FileMustExist: iDialogOption;
begin
  Result := Self;
  FOptions := FOptions + [ofFileMustExist];
end;

function TSaveDialogs.ReadOnly: iDialogOption;
begin
  Result := Self;
  FOptions := FOptions + [ofReadOnly];
end;

end.
