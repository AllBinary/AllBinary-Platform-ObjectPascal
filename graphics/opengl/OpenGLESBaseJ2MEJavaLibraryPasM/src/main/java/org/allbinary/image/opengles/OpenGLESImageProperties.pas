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
unit OpenGLESImageProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TOpenGLESImageProperties = class(TObject)
  public
    textureID: Integer;
    scaleX: Single;
    scaleY: Single;
    scaleX2: Single;
    scaleY2: Single;
    angle: Integer;
    redf: Single;
    greenf: Single;
    bluef: Single;
    alphaf: Single;
    procedure InitFields;
    constructor Create;
  end;

implementation

{AB:CODE}

procedure TOpenGLESImageProperties.InitFields;
begin
  Self.textureID := -1;
  Self.scaleX := 1.0;
  Self.scaleY := 1.0;
  Self.scaleX2 := 1.0;
  Self.scaleY2 := 1.0;
  
  Self.redf := 1.0;
  Self.greenf := 1.0;
  Self.bluef := 1.0;
  
end;

constructor TOpenGLESImageProperties.Create;
begin
  inherited Create;
  InitFields;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

