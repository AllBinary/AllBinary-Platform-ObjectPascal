{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.image.opengles
unit OpenGLESImageProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10;

type
  {AB:TYPES}
  TOpenGLESImageProcessor = class(TObject)
  public
    class var instance: TOpenGLESImageProcessor;
    constructor Create;
        class function getInstance: TOpenGLESImageProcessor; static;
        procedure translate(gl: IGL10; translateX: Single; translateY: Single); virtual;
        procedure rotate(gl: IGL10; angle: Single); virtual;
        procedure scale(gl: IGL10; scaleX: Single; scaleY: Single); virtual;
        procedure colorMask(gl: IGL10; red: Single; green: Single; blue: Single; alpha: Single); virtual;
  end;

implementation

{AB:CODE}

constructor TOpenGLESImageProcessor.Create;
begin
  inherited Create;
end;
    

class function TOpenGLESImageProcessor.getInstance: TOpenGLESImageProcessor;
begin
        Exit(TOpenGLESImageProcessor.instance);
end;
    

procedure TOpenGLESImageProcessor.translate(gl: IGL10; translateX: Single; translateY: Single);
begin
end;
    

procedure TOpenGLESImageProcessor.rotate(gl: IGL10; angle: Single);
begin
end;
    

procedure TOpenGLESImageProcessor.scale(gl: IGL10; scaleX: Single; scaleY: Single);
begin
end;
    

procedure TOpenGLESImageProcessor.colorMask(gl: IGL10; red: Single; green: Single; blue: Single; alpha: Single);
begin
end;

initialization
  {AB:INITIALIZATION}
  TOpenGLESImageProcessor.instance := TOpenGLESImageProcessor.Create();
  {AB:END}

end.

