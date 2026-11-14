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
unit LocationPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, LocationPaintableInterface;

type
  {AB:TYPES}
  TLocationPaintable = class(TInterfacedObject, ILocationPaintableInterface)
  public
    class var instance: TLocationPaintable;
    function JavaObject: TObject;
    constructor Create;
        class function getInstance: TLocationPaintable; static;
        procedure paintXY(graphics_: TGraphics; x: Integer; y: Integer); virtual;
  end;

implementation

{AB:CODE}

function TLocationPaintable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TLocationPaintable.Create;
begin
  inherited Create;
end;
    

class function TLocationPaintable.getInstance: TLocationPaintable;
begin
        Exit(TLocationPaintable.instance);
end;
    

procedure TLocationPaintable.paintXY(graphics_: TGraphics; x: Integer; y: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TLocationPaintable.instance := TLocationPaintable.Create();
  {AB:END}

end.

