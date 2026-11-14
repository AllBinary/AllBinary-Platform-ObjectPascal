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
// package org.allbinary.image.opengles
unit OpenGLESDeviceImageTranslate;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, OpenGLESImage, OpenGLESImageTranslate;

type
  {AB:TYPES}
  TOpenGLESDeviceImageTranslate = class(TOpenGLESImageTranslate)
  public
    translateX: Single;
    translateY: Single;
    translateX2: Single;
    translateY2: Single;
    procedure InitFields;
    constructor Create;
        procedure translate(gl: IGL10; openGLESImage_: TOpenGLESImage; x: Single; y: Single); override;
        procedure translate2(gl: IGL10; openGLESImage_: TOpenGLESImage); override;
  end;

implementation

{AB:CODE}

procedure TOpenGLESDeviceImageTranslate.InitFields;
begin
  Self.translateX := 0.0;
  Self.translateY := 0.0;
  Self.translateX2 := 0.0;
  Self.translateY2 := 0.0;
end;

constructor TOpenGLESDeviceImageTranslate.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TOpenGLESDeviceImageTranslate.translate(gl: IGL10; openGLESImage_: TOpenGLESImage; x: Single; y: Single);
begin
        openGLESImage_.imageProcessor.translate(gl, (Self.translateX) + (((openGLESImage_.openGLESImageProperties.scaleX) * (x))), (Self.translateY) + (((openGLESImage_.openGLESImageProperties.scaleY) * (y))));
end;
    

procedure TOpenGLESDeviceImageTranslate.translate2(gl: IGL10; openGLESImage_: TOpenGLESImage);
begin
        openGLESImage_.imageProcessor.translate(gl, Self.translateX2, Self.translateY2);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

