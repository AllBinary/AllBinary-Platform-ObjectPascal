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
// package org.allbinary.graphics.opengles
unit OpenGLVUtilBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10;

type
  {AB:TYPES}
  TOpenGLVUtilBase = class(TObject)
  public
    constructor Create;
        procedure glTexEnvix(gl: IGL10; target: Integer; pname: Integer; param: Integer); virtual;
        procedure glTexParameterix(gl: IGL10; target: Integer; pname: Integer; param: Integer); virtual;
        procedure glGenerateMipmap(gl: IGL10; textureId: Integer; target: Integer; generateMipMap: Boolean); virtual;
  end;

implementation

{AB:CODE}

constructor TOpenGLVUtilBase.Create;
begin
  inherited Create;
end;
    

procedure TOpenGLVUtilBase.glTexEnvix(gl: IGL10; target: Integer; pname: Integer; param: Integer);
begin
end;
    

procedure TOpenGLVUtilBase.glTexParameterix(gl: IGL10; target: Integer; pname: Integer; param: Integer);
begin
end;
    

procedure TOpenGLVUtilBase.glGenerateMipmap(gl: IGL10; textureId: Integer; target: Integer; generateMipMap: Boolean);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

