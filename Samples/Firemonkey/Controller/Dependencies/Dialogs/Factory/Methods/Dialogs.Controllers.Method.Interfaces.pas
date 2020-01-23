unit Dialogs.Controllers.Method.Interfaces;

interface

uses
  System.Classes;

type
  iDialogParams = interface;
  iDialogs = interface;

  iDialogOption = interface
    ['{4145BA77-C77F-4350-AE17-6C8F948E976A}']
    function ReadOnly: iDialogOption;
    function AllowMultiSelect: iDialogOption;
    function FileMustExist: iDialogOption;
    function EndOptions: iDialogParams;
  end;

  iDialogFilter = interface
    ['{EB4C9773-C095-4707-ADC4-82BCAEE81AF4}']
    function AddXML: iDialogFilter;
    function AddPDF: iDialogFilter;
    function AddTXT: iDialogFilter;
    function AddAll: iDialogFilter;
    function AddZip: iDialogFilter;
    function EndFilter: iDialogParams;
  end;

  iDialogParams = interface
    function Title(Value: String): iDialogParams;
    function DefaultExt(Value : String): iDialogParams;
    function InitialDir(Value: String): iDialogParams;
    function FilterIndex(Value: Integer): iDialogParams;
    function AddFilter: iDialogFilter;
    function AddOption: iDialogOption;
    function EndParams: iDialogs;
  end;

  iDialogs = interface
    ['{E61EB251-D5A9-4B05-B212-9241416513D5}']
    function Params: iDialogParams;
    function Execute(var pNameFile: TStrings): Boolean; overload;
    function Execute(var pNameFile: String): Boolean; overload;
    function Execute : String; overload;
  end;

implementation

end.
