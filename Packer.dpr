program Packer;

uses
  Vcl.Forms,
  Packer.View in 'Views\Packer.View.pas' {Form1},
  Packer.Controller.Factory.Interf in 'Controller\Factory\Packer.Controller.Factory.Interf.pas',
  Packer.Controller.Factory in 'Controller\Factory\Packer.Controller.Factory.pas',
  Packer.Controller.Method.Interf in 'Controller\Factory\Methods\Packer.Controller.Method.Interf.pas',
  Packer.Controller.Method in 'Controller\Factory\Methods\Packer.Controller.Method.pas',
  Packer.Controller.Method.Zip.Interf in 'Controller\Factory\Methods\ZIP\Packer.Controller.Method.Zip.Interf.pas',
  Packer.Controller.Method.Zip in 'Controller\Factory\Methods\ZIP\Packer.Controller.Method.Zip.pas',
  Packer.Controller.Method.UnZip.Interf in 'Controller\Factory\Methods\UNZIP\Packer.Controller.Method.UnZip.Interf.pas',
  Packer.Controller.Method.UnZip in 'Controller\Factory\Methods\UNZIP\Packer.Controller.Method.UnZip.pas',
  Dialogs.Controllers.Factory in 'Controller\Dependencies\Dialogs\Factory\Dialogs.Controllers.Factory.pas',
  Dialogs.Controllers.Interfaces.Factory in 'Controller\Dependencies\Dialogs\Factory\Dialogs.Controllers.Interfaces.Factory.pas',
  Dialogs.Controllers.Method.Interfaces in 'Controller\Dependencies\Dialogs\Factory\Methods\Dialogs.Controllers.Method.Interfaces.pas',
  Dialogs.Controllers.Method.OpenDialogs in 'Controller\Dependencies\Dialogs\Factory\Methods\Dialogs.Controllers.Method.OpenDialogs.pas',
  Dialogs.Controllers.Method.SaveDialogs in 'Controller\Dependencies\Dialogs\Factory\Methods\Dialogs.Controllers.Method.SaveDialogs.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
