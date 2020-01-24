unit Packer.Controller.Method.Zip.Interfaces;

interface

uses
{$IFDEF FMX}
  FMX.StdCtrls,
{$ELSE}
  Vcl.StdCtrls, Vcl.ComCtrls,
{$ENDIF}
  System.Generics.Collections, System.Zip;

type
  iZip = interface;
  iZipParams = interface;

  iZipInternParams = interface
    ['{DBAA30A6-D4C4-41D4-9363-FCE817EEB90B}']
    function GetTemporaryDir: String;
    procedure CreateTemporaryDir(var pNameFile: String);
    procedure CopyToTempDir(pCurrentDir, pFutureDir: String);
    procedure DeleteDir(pPathDir: String);
    procedure ExtractFilesToTempDir;
    procedure EventOnProgress(Sender: TObject; FileName: string;
      Header: TZipHeader; Position: Int64);
    procedure DeleteTempDir(pPath: String);
  end;

  iZipFilterExt = interface
    ['{D64996A2-EF57-4FF8-A9DA-4E9727F5C821}']
    function AddXML: iZipFilterExt;
    function AddTXT: iZipFilterExt;
    function AddPDF: iZipFilterExt;
    function AddFDB: iZipFilterExt;
    function AddZip: iZipFilterExt;
    function &EndFilterExt: iZipParams;
  end;

  iZipFiles = interface
    ['{EFE7E7EE-CF31-403A-89E7-F36B19C01274}']
    function AddFilesToCompress(pPathFile: String): iZipFiles; overload;
    function AddFilesToCompress(pPathFile: TList<String>): iZipFiles; overload;
    function AddFilesToCompressWithOpenDialog: iZipFiles;
    procedure &Execute;
  end;

  iZipParams = interface
    ['{C2F98D83-808D-4EC0-A059-D276173016CA}']
    function SaveAs(Value: String): iZipParams; overload;
    function SaveAs: iZipParams; overload;
    function TrackProgres(var pLabel: TLabel; var pProgressbar: TProgressBar)
      : iZipParams;
    function AddFilterExt: iZipFilterExt;
    function &EndParams: iZipFiles;
  end;

  iZip = interface
    ['{0DC71676-9725-4A30-B61C-E14FDA201C9D}']
    function Params: iZipParams;
  end;

implementation

end.
