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
unit OpenGLESImageTranslate;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, OpenGLESImage;

type
  {AB:TYPES}
  TOpenGLESImageTranslate = class(TObject)
  public
    class var instance: TOpenGLESImageTranslate;
    constructor Create;
        class function getInstance: TOpenGLESImageTranslate; static;
        procedure translate(gl: IGL10; openGLESImage_: TOpenGLESImage; x: Single; y: Single); virtual;
        procedure translate2(gl: IGL10; openGLESImage_: TOpenGLESImage); virtual;
  end;

implementation

{AB:CODE}

constructor TOpenGLESImageTranslate.Create;
begin
  inherited Create;
end;
    

class function TOpenGLESImageTranslate.getInstance: TOpenGLESImageTranslate;
begin
        Exit(TOpenGLESImageTranslate.instance);
end;
    

procedure TOpenGLESImageTranslate.translate(gl: IGL10; openGLESImage_: TOpenGLESImage; x: Single; y: Single);
begin
end;
    

procedure TOpenGLESImageTranslate.translate2(gl: IGL10; openGLESImage_: TOpenGLESImage);
begin
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESImageTranslate.instance := TOpenGLESImageTranslate.Create();
  {AB:END}

end.

