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
// package org.allbinary.graphics.threed
unit GLHolder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGLHolder = class(TObject)
  public
    isCreated: Boolean;
    procedure InitFields;
        constructor Create;
        procedure runOnSurfaceCreated(renderer: TObject); virtual;
        procedure runOnSurfaceChanged(renderer: TObject; width: Integer; height: Integer); virtual;
        procedure run(renderer: TObject); virtual;
  end;

implementation

{AB:CODE}

procedure TGLHolder.InitFields;
begin
  Self.isCreated := True;
end;
    

constructor TGLHolder.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGLHolder.runOnSurfaceCreated(renderer: TObject);
begin
end;
    

procedure TGLHolder.runOnSurfaceChanged(renderer: TObject; width: Integer; height: Integer);
begin
end;
    

procedure TGLHolder.run(renderer: TObject);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

