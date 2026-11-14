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
unit ColorFillBasePaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor, ColorCompositeInterface, Paintable, BasicColorCompositeSetterInterface;

type
  {AB:TYPES}
  TColorFillBasePaintable = class(TPaintable, IColorCompositeInterface, IBasicColorCompositeSetterInterface)
  public
    basicColor: TBasicColor;
    colorP: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicColor_: TBasicColor);
        procedure setBasicColorP(basicColor_: TBasicColor); virtual;
        function getBasicColorP: TBasicColor; virtual;
        function getColor: Integer; virtual;
        procedure setColor(color: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TColorFillBasePaintable.InitFields;
begin
  Self.basicColor := TBasicColorFactory.getInstance().WHITE;
  
end;

function TColorFillBasePaintable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TColorFillBasePaintable.Create(basicColor_: TBasicColor);
begin
    inherited Create;
    InitFields;
        Self.setBasicColorP(basicColor_);
end;
    

procedure TColorFillBasePaintable.setBasicColorP(basicColor_: TBasicColor);
begin
        Self.basicColor := basicColor_;
        Self.setColor(Self.getBasicColorP().intValue());
end;
    

function TColorFillBasePaintable.getBasicColorP: TBasicColor;
begin
        Exit(Self.basicColor);
end;
    

function TColorFillBasePaintable.getColor: Integer;
begin
        Exit(Self.colorP);
end;
    

procedure TColorFillBasePaintable.setColor(color: Integer);
begin
        Self.colorP := color;
end;
    

procedure TColorFillBasePaintable.paint(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

