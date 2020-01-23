unit Packer.Controller.Factory.Interfaces;

interface

uses
  Packer.Controller.Method.Interfaces;
  type
    iPackerFactory = interface
      ['{4EFB9843-6B26-462F-8439-F7E693FC6EF7}']
      function Method : iPackerMethods;
    end;

implementation

end.
