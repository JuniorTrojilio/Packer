unit Packer.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ProgressBar1: TProgressBar;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Packer.Controller.Factory;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;
  TPackerFactory
    .New
      .Method
        .Zip
          .Params
            .SaveAs()
            .TrackProgres(Label1, ProgressBar1)
          .EndParams
          .AddFilesToCompressWithOpenDialog
          .Execute();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TPackerFactory.New
    .Method
      .Unzip
        .TrackProgres(Label1, ProgressBar1)
        .SetFileToDecompress('C:\Users\osmar\Desktop\Arquivo.zip')
          .ExtractFile('C:\Users\osmar\Documents')
          .Execute;
end;

end.
