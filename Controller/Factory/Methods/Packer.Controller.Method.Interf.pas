unit Packer.Controller.Method.Interf;

interface

uses
  Packer.Controller.Method.Zip.Interf, Packer.Controller.Method.UnZip.Interf;
  type
    iPackerMethods = interface
      ['{37AD3FBE-5124-491C-B774-DC0C639E7AD2}']
      function Zip : iZip;
      function Unzip : iUnZip;
    end;

implementation

end.
