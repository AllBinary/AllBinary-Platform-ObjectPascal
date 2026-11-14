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
unit UpdateMyFontProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, UpdateMyFontInterface, MyFontProcessor;

type
  {AB:TYPES}
  TUpdateMyFontProcessor = class(TMyFontProcessor)
  public
    updateMeasurementProcessor: IUpdateMyFontInterface;
    procedure InitFields;
        constructor Create(keyValueDrawCharArray: IUpdateMyFontInterface);
        procedure process(graphics_: TGraphics); override;
  end;

implementation

{AB:CODE}

procedure TUpdateMyFontProcessor.InitFields;
begin
  
end;
    

constructor TUpdateMyFontProcessor.Create(keyValueDrawCharArray: IUpdateMyFontInterface);
begin
    inherited Create;
    InitFields;
        Self.updateMeasurementProcessor := keyValueDrawCharArray;
end;
    

procedure TUpdateMyFontProcessor.process(graphics_: TGraphics);
begin
        Self.updateMeasurementProcessor.updateMeasurement(graphics_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

