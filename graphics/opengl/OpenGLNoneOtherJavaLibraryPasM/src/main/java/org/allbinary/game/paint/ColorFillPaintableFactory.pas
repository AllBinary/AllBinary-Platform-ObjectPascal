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
// package org.allbinary.game.paint
unit ColorFillPaintableFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicColor, ColorFillBasePaintable;

type
  {AB:TYPES}
  TColorFillPaintableFactory = class(TObject)
  public
    class var instance: TColorFillPaintableFactory;
    constructor Create;
        class function getInstance: TColorFillPaintableFactory; overload; static;
        function getInstance(basicColor_: TBasicColor; forThreedCanvas: Boolean): TColorFillBasePaintable; overload; virtual;
  end;

implementation
uses
  ColorFillPaintable, OverScanColorFillPaintable, GenericOperatingSystem, OperatingSystemFactory;


{AB:CODE}

constructor TColorFillPaintableFactory.Create;
begin
  inherited Create;
end;
    

class function TColorFillPaintableFactory.getInstance: TColorFillPaintableFactory;
begin
        Exit(TColorFillPaintableFactory.instance);
end;
    

function TColorFillPaintableFactory.getInstance(basicColor_: TBasicColor; forThreedCanvas: Boolean): TColorFillBasePaintable;
var
  operatingSystem: TGenericOperatingSystem;
begin
        operatingSystem := TOperatingSystemFactory.getInstance().getOperatingSystemInstance();
        if operatingSystem.isOverScan() then begin
            Exit(TOverScanColorFillPaintable.Create(basicColor_));
        end else begin
            Exit(TColorFillPaintable.Create(basicColor_));
        end;
end;

initialization
  {AB:INITIALIZATION}
  TColorFillPaintableFactory.instance := TColorFillPaintableFactory.Create();
  {AB:END}

end.

