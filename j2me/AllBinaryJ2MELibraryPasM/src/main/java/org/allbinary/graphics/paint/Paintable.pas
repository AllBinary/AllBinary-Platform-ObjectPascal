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
unit Paintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, PaintableInterface;

type
  {AB:TYPES}
  TPaintable = class(TInterfacedObject, IPaintableInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        procedure paintThreed(graphics_: TGraphics); virtual;
  end;

implementation

{AB:CODE}

function TPaintable.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TPaintable.Create;
begin
  inherited Create;
end;
    

procedure TPaintable.setBasicColorP(basicColor_: TBasicColor);
begin
end;
    

procedure TPaintable.paint(graphics_: TGraphics);
begin
end;
    

procedure TPaintable.paintThreed(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

