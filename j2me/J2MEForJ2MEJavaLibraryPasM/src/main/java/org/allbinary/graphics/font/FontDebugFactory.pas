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
// package org.allbinary.graphics.font
unit FontDebugFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, Graphics;

type
  {AB:TYPES}
  TFontDebugFactory = class(TObject)
  public
    class var instance: TFontDebugFactory;
    constructor Create;
        class function getInstance: TFontDebugFactory; static;
        procedure setFont(font_: TFont; graphics_: TGraphics); virtual;
  end;

implementation

{AB:CODE}

constructor TFontDebugFactory.Create;
begin
  inherited Create;
end;
    

class function TFontDebugFactory.getInstance: TFontDebugFactory;
begin
        Exit(TFontDebugFactory.instance);
end;
    

procedure TFontDebugFactory.setFont(font_: TFont; graphics_: TGraphics);
begin
        graphics_.setFont(font_);
end;

initialization
  {AB:INITIALIZATION}
  TFontDebugFactory.instance := TFontDebugFactory.Create();
  {AB:END}

end.

