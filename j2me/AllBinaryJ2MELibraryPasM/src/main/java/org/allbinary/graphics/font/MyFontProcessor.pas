{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.graphics.font
unit MyFontProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Font, Graphics;

type
  {AB:TYPES}
  TMyFontProcessor = class(TObject)
  public
    class var instance: TMyFontProcessor;
    constructor Create;
        class function defaultCharWidth(font_: TFont): Integer; static;
        class function defaultStringWidth(font_: TFont; size: Integer): Integer; static;
        class function getInstance: TMyFontProcessor; static;
        procedure process(graphics_: TGraphics); virtual;
  end;

implementation

{AB:CODE}

constructor TMyFontProcessor.Create;
begin
  inherited Create;
end;
    

class function TMyFontProcessor.defaultCharWidth(font_: TFont): Integer;
begin
        Exit(font_.charWidth('C'));
end;
    

class function TMyFontProcessor.defaultStringWidth(font_: TFont; size: Integer): Integer;
begin
        Exit((TMyFontProcessor.defaultCharWidth(font_)) * (size));
end;
    

class function TMyFontProcessor.getInstance: TMyFontProcessor;
begin
        Exit(TMyFontProcessor.instance);
end;
    

procedure TMyFontProcessor.process(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  TMyFontProcessor.instance := TMyFontProcessor.Create();
  {AB:END}

end.

