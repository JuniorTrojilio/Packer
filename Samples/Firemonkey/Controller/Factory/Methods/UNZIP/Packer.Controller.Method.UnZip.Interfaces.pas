unit Packer.Controller.Method.UnZip.Interfaces;

interface

uses
{$IFDEF FMX}
  FMX.StdCtrls,
{$ELSE}
  Vcl.StdCtrls, Vcl.ComCtrls,
{$ENDIF}
  System.Zip;

type
  iUnzipInternParams = interface
    ['{BBA46B39-6301-4DD2-85C4-51FD5B1A9687}']
    procedure EventOnProgress(Sender: TObject; FileName: string;
      Header: TZipHeader; Position: Int64);
  end;

  iUnZipFile = interface
    ['{E5116DF5-A8BC-4F18-84A4-BA88EB094B39}']
    procedure &Execute;
  end;

  iUnzipMethod = interface
    ['{9E15DCA6-171C-41C8-925B-914A33D35FC0}']
    function ExtractFile(pPathToSave: String): iUnZipFile; overload;
    function ExtractFile: iUnZipFile; overload;
  end;

  iUnZip = interface
    ['{94A1099E-7753-4C07-A213-DB2805FC8A55}']
    function SetFileToDecompress(pPathFile: String): iUnzipMethod; overload;
    function SetFileToDecompress: iUnzipMethod; overload;
    function TrackProgres(var pLabel: TLabel; var pProgressbar: TProgressBar)
      : iUnZip;
  end;

implementation

end.
