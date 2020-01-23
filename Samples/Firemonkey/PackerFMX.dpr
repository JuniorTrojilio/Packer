program PackerFMX;

uses
  System.StartUpCopy,
  FMX.Forms,
  PackerFMX.View in 'View\PackerFMX.View.pas' {Form1},
  Dialogs.Controllers.Factory in 'Controller\Dependencies\Dialogs\Factory\Dialogs.Controllers.Factory.pas',
  Dialogs.Controllers.Interfaces.Factory in 'Controller\Dependencies\Dialogs\Factory\Dialogs.Controllers.Interfaces.Factory.pas',
  Dialogs.Controllers.Method.Interfaces in 'Controller\Dependencies\Dialogs\Factory\Methods\Dialogs.Controllers.Method.Interfaces.pas',
  Dialogs.Controllers.Method.OpenDialogs in 'Controller\Dependencies\Dialogs\Factory\Methods\Dialogs.Controllers.Method.OpenDialogs.pas',
  Dialogs.Controllers.Method.SaveDialogs in 'Controller\Dependencies\Dialogs\Factory\Methods\Dialogs.Controllers.Method.SaveDialogs.pas',
  Packer.Controller.Factory.Interfaces in 'Controller\Factory\Packer.Controller.Factory.Interfaces.pas',
  Packer.Controller.Factory in 'Controller\Factory\Packer.Controller.Factory.pas',
  Packer.Controller.Method.Interfaces in 'Controller\Factory\Methods\Packer.Controller.Method.Interfaces.pas',
  Packer.Controller.Method in 'Controller\Factory\Methods\Packer.Controller.Method.pas',
  Packer.Controller.Method.Zip.Interfaces in 'Controller\Factory\Methods\ZIP\Packer.Controller.Method.Zip.Interfaces.pas',
  Packer.Controller.Method.Zip in 'Controller\Factory\Methods\ZIP\Packer.Controller.Method.Zip.pas',
  Packer.Controller.Method.UnZip.Interfaces in 'Controller\Factory\Methods\UNZIP\Packer.Controller.Method.UnZip.Interfaces.pas',
  Packer.Controller.Method.UnZip in 'Controller\Factory\Methods\UNZIP\Packer.Controller.Method.UnZip.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
