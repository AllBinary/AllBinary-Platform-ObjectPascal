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
// package org.allbinary.graphics.color
unit BasicColorSetUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicColor;

type
  {AB:TYPES}
  TBasicColorSetUtil = class(TObject)
  public
    class var instance: TBasicColorSetUtil;
        class function getInstance: TBasicColorSetUtil; static;
        constructor Create;
        procedure setBasicColorP(graphics_: TGraphics; basicColor_: TBasicColor); virtual;
        procedure setBasicColorP3(graphics_: TGraphics; basicColor_: TBasicColor; value: Integer); virtual;
  end;

implementation

{AB:CODE}
    

class function TBasicColorSetUtil.getInstance: TBasicColorSetUtil;
begin
        Exit(TBasicColorSetUtil.instance);
end;
    

constructor TBasicColorSetUtil.Create;
begin
    inherited Create;
end;
    

procedure TBasicColorSetUtil.setBasicColorP(graphics_: TGraphics; basicColor_: TBasicColor);
begin
        graphics_.setColor(basicColor_.intValue());
end;
    

procedure TBasicColorSetUtil.setBasicColorP3(graphics_: TGraphics; basicColor_: TBasicColor; value: Integer);
begin
        graphics_.setColor(value);
end;

initialization
  {AB:INITIALIZATION}
  TBasicColorSetUtil.instance := TBasicColorSetUtil.Create();
  {AB:END}

end.

