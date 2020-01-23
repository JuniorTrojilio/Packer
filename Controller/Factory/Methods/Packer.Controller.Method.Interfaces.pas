unit Packer.Controller.Method.Interfaces;

interface

uses
  Packer.Controller.Method.Zip.Interfaces, Packer.Controller.Method.UnZip.Interfaces;
  type
    iPackerMethods = interface
      ['{37AD3FBE-5124-491C-B774-DC0C639E7AD2}']
      function Zip : iZip;
      function Unzip : iUnZip;
    end;

implementation

end.
