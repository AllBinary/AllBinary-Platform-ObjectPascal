{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.paint
unit InitUpdatePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Paintable, InitUpdatePaintableInterface, InitInterface, PaintableInterface, UpdateInterface;

type
  {AB:TYPES}
  TInitUpdatePaintable = class(TPaintable, IInitUpdatePaintableInterface, IInitInterface, IPaintableInterface, IUpdateInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        procedure init; virtual;
        procedure update; virtual;
  end;

implementation

{AB:CODE}

function TInitUpdatePaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TInitUpdatePaintable.Create;
begin
    inherited Create;
end;
    

// throws Exception
procedure TInitUpdatePaintable.init;
begin
end;
    

procedure TInitUpdatePaintable.update;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

